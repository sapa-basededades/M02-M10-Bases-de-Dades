
#!/bin/bash

# Define the services
new_master="logrepl_pg_replica1"
remaining_replica="logrepl_pg_replica2"
old_master="logrepl_pg_master"

# Stop the old master
echo "Stopping the old master: $old_master..."
docker stop "$old_master"

# Wait for a second to ensure the stop command fully processes
sleep 1

# Disable subscriptions on replica1 and replica2 without dropping them
echo "Disabling subscriptions on $new_master and $remaining_replica..."
docker exec -i "$new_master" psql -U postgres -d postgres -c "ALTER SUBSCRIPTION ${new_master}_subscription DISABLE; ALTER SUBSCRIPTION ${new_master}_subscription SET (slot_name = NONE);"
docker exec -i "$remaining_replica" psql -U postgres -d postgres -c "ALTER SUBSCRIPTION ${remaining_replica}_subscription DISABLE; ALTER SUBSCRIPTION ${remaining_replica}_subscription SET (slot_name = NONE);"


# update postgresql secuences on the new master to be
docker exec -i "$new_master" psql -U postgres -d postgres -c "SELECT setval('users_user_id_seq', COALESCE((SELECT MAX(user_id) FROM users), 0) + 1, false);"
docker exec -i "$new_master" psql -U postgres -d postgres -c "SELECT setval('posts_post_id_seq', COALESCE((SELECT MAX(post_id) FROM posts), 0) + 1, false);"
docker exec -i "$new_master" psql -U postgres -d postgres -c "SELECT setval('comments_comment_id_seq', COALESCE((SELECT MAX(comment_id) FROM comments), 0) + 1, false);"

# Ensure replica2 starts with a clean state
echo "Resetting data on $remaining_replica to prepare for replication..."
docker exec -i "$remaining_replica" psql -U postgres -d postgres -c "TRUNCATE TABLE users, posts, comments RESTART IDENTITY CASCADE;"

# Continue with the creation of the new publication and subscription as before
echo "Creating new publication on $new_master..."
docker exec -i "$new_master" psql -U postgres -d postgres -c "CREATE PUBLICATION new_master_publication FOR ALL TABLES;"

echo "Configuring $remaining_replica to replicate from $new_master..."
docker exec -i "$remaining_replica" psql -U postgres -d postgres -c "CREATE SUBSCRIPTION replica2_new_subscription CONNECTION 'dbname=postgres host=$new_master user=postgres password=postgres' PUBLICATION new_master_publication;"

echo "Replication reconfiguration complete."

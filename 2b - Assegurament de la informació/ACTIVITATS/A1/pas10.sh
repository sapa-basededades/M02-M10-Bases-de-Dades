#!/bin/bash
old_master="logrepl_pg_master"
new_master="logrepl_pg_replica1"
old_master_subscription="my_subscription"
max_number_of_replicas=4
max_wal_senders=8

docker stop $old_master
sleep 1
docker rm $old_master
sleep 1
docker volume rm logrepl_pg_master-data
docker compose up -d
sleep 2
docker cp ./schema.sql "$old_master:/tmp/schema.sql"
docker exec -i $old_master psql -U postgres -d postgres -f /tmp/schema.sql
docker exec -i $old_master rm /tmp/schema.sql

docker exec -i "$old_master" bash -c "sed -i 's/^#*wal_level .*$/wal_level = logical/' /var/lib/postgresql/data/postgresql.conf"
docker exec -i "$old_master" bash -c "sed -i 's/^#*max_replication_slots .*$/max_replication_slots = $max_number_of_replicas/' /var/lib/postgresql/data/postgresql.conf"
docker exec -i "$old_master" bash -c "sed -i 's/^#*max_wal_senders .*$/max_wal_senders = $max_wal_senders/' /var/lib/postgresql/data/postgresql.conf"
docker exec -i "$old_master" bash -c "grep -qxF 'host replication all all md5' /var/lib/postgresql/data/pg_hba.conf || echo 'host replication all all md5' >> /var/lib/postgresql/data/pg_hba.conf"
docker restart $old_master

sleep 2

# Disable any outgoing replication from the old master
echo "Disabling any publications on $old_master..."
docker exec -i "$old_master" psql -U postgres -d postgres -c "DROP PUBLICATION IF EXISTS my_publication;"

# Remove previous replica subscriptions of master in replica1
docker exec -it logrepl_pg_replica1 psql -U postgres -d postgres -c "SELECT pg_drop_replication_slot('my_subscription');"


# Create a new subscription on the old master to the new master's publication
docker exec -i "$old_master" psql -U postgres -d postgres -c "DROP SUBSCRIPTION IF EXISTS $old_master_subscription;"
docker exec -i "$old_master" psql -U postgres -d postgres -c "CREATE SUBSCRIPTION $old_master_subscription CONNECTION 'dbname=postgres host=$new_master user=postgres password=postgres' PUBLICATION new_master_publication;"

echo "Subscription setup complete. $old_master is now a subscriber of $new_master."

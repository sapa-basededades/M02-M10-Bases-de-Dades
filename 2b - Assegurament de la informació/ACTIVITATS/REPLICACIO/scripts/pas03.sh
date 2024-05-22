#!/bin/bash
docker stop logrepl_pg_replica2
sleep 10
docker exec -i logrepl_pg_master psql -U postgres -d postgres -c "INSERT INTO users (username, email) VALUES ('newuser2', 'newuser2@example.com');"
./pas2.sh

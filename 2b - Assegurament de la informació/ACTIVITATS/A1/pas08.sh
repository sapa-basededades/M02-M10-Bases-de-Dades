#!/bin/bash
docker exec -i logrepl_pg_replica1 psql -U postgres -d postgres -c "INSERT INTO users (username, email) VALUES ('newuser4', 'newuser4@example.com');"
./pas2.sh

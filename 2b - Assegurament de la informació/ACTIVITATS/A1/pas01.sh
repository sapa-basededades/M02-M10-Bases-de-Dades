#!/bin/bash
docker exec -i logrepl_pg_master psql -U postgres -d postgres -c "INSERT INTO users (username,email) VALUES('fbarragan','fbarragan@sapalomera.cat');"

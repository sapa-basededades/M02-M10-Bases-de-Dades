#!/bin/bash

# Definim la master database i les  repliques

master_db="logrepl_pg_master"
replicas=("logrepl_pg_replica1" "logrepl_pg_replica2")

# Configurem la master database
echo "Configuring $master_db as master..."
docker exec -i "$master_db" psql -U postgres -d postgres -c "DROP PUBLICATION IF EXISTS my_publication;"
docker exec -i "$master_db" psql -U postgres -d postgres -c "CREATE PUBLICATION my_publication FOR ALL TABLES;"

# Configurem cada replica per seguir la master
for replica in "${replicas[@]}"; do
    echo "Configuring $replica to replicate from $master_db..."

    # Construim la  connection string
    conninfo="host=$master_db port=5432 user=postgres password=postgres dbname=postgres"

    # Configurem la subscripció en la replica
    docker exec -i "$replica" psql -U postgres -d postgres -c "DROP SUBSCRIPTION IF EXISTS ${replica}_subscription;"
    docker exec -i "$replica" psql -U postgres -d postgres -c "CREATE SUBSCRIPTION ${replica}_subscription CONNECTION 'dbname=postgres host=$master_db user=postgres password=postgres' PUBLICATION my_publication;"

    echo "$replica configurada per replicar des de $master_db."
done

echo "Master i replicas configurades correctanent per replicació lògica."


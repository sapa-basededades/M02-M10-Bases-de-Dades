#!/bin/bash
#
# Script per configurar les instancies de  PostgreSQL per la replicació lògica

max_number_of_replicas=4
max_wal_senders=8

# Definim totes les instàncies PostgreSQL
databases=("logrepl_pg_master" "logrepl_pg_replica1" "logrepl_pg_replica2")

for db in "${databases[@]}"; do
    # Apliquemels canvis de configuració
    echo "Configurant instancia PostgreSQL  $db per replicació lògica..."
    docker exec -i "$db" bash -c "sed -i 's/^#*wal_level .*$/wal_level = logical/' /var/lib/postgresql/data/postgresql.conf"
    docker exec -i "$db" bash -c "sed -i 's/^#*max_replication_slots .*$/max_replication_slots = $max_number_of_replicas/' /var/lib/postgresql/data/postgresql.conf"
    docker exec -i "$db" bash -c "sed -i 's/^#*max_wal_senders .*$/max_wal_senders = $max_wal_senders/' /var/lib/postgresql/data/postgresql.conf"
    docker exec -i "$db" bash -c "grep -qxF 'host replication all all md5' /var/lib/postgresql/data/pg_hba.conf || echo 'host replication all all md5' >> /var/lib/postgresql/data/pg_hba.conf"

    echo "Reiniciant instancia de PostgreSQL  $db per aplicar canvis de configuració..."
    docker restart "$db"
done

# Esperem dos segons a que les bases de dades facin el reboot
sleep 2

echo "Totes les instàncies de PostgreSQL configurades correctament per la replicació lògica."

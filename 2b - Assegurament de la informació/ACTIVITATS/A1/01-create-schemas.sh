#!/bin/bash

#
# Script per copiar el fitxer d'esquema de la base de dades
# a cadascun dels contenidors/bd que desplegarem amb el docker-compose
#

databases=("logrepl_pg_master" "logrepl_pg_replica1" "logrepl_pg_replica2")
schema_file="./schema.sql"

for db in "${databases[@]}"; do
    echo "Copiant esquema to $db..."
    docker cp "$schema_file" "$db:/tmp/schema.sql"

    echo "Carregant esquema a $db..."
    docker exec -i "$db" psql -U postgres -d postgres -f /tmp/schema.sql

    echo "Borrant fitxer esquema de $db..."
    docker exec -i "$db" rm /tmp/schema.sql

    echo "Esquema carregat satisfactoriament dintre de $db!"
done

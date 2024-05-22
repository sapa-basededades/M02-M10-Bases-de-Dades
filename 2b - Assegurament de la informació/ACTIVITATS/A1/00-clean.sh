#!/bin/bash

#
# Script per borrar tots els contenidors i volums creats en el desplegament
#

docker compose down
docker volume rm logrepl_pg_master-data logrepl_pg_replica1-data logrepl_pg_replica2-data

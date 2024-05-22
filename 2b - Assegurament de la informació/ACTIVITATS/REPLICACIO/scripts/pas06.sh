
#!/bin/bash

# Stop the old master
docker stop logrepl_pg_master

# Wait for a second to ensure the stop command fully processes
sleep 1

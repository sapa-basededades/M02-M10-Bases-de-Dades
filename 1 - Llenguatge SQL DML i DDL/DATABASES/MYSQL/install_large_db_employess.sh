#!/bin/bash

# VARIABLES NECESSÀRIES
export DB_USER=$1
export DB_PWD=$2

yum install -y wget bzip2

# Download Database
cd /tmp/
wget https://launchpad.net/test-db/employees-db-1/1.0.6/+download/employees_db-full-1.0.6.tar.bz2
#tar -xjvf file.tar.bz2 -C /tmp/employees_db

tar -xjvf employees_db-full-1.0.6.tar.bz2

cd /tmp/employees_db

mysql -u $DB_USER --password="$DB_PWD" < /tmp/employees_db/employees.sql

mysql -u $DB_USER --password="$DB_PWD" < /tmp/employees_db/test_employees_md5.sql

rm -rf /tmp/employees_db
rm -f /tmp/employees_db-full-1.0.6.tar.bz2

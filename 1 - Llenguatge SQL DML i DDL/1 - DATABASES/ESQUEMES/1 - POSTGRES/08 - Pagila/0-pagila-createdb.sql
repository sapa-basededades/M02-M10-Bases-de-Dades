-- Following script has been tested in pgAdmin.
-- If you use ppScript, please following the command instruction

-- Connect to another default database or test database;
-- Database: testdb;
-- Disconnect existing Northwind if you have created.  

DROP DATABASE IF EXISTS pagila; 



CREATE DATABASE pagila 
  WITH 
    encoding = 'UTF8'
    tablespace = pg_default 
    lc_collate = 'en_AU.UTF-8' 
    lc_ctype = 'en_AU.UTF-8'
    connection LIMIT = -1 
    template template0; 

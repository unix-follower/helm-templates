#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --host 127.0.0.1 --username postgres --dbname postgres <<-EOSQL
    CREATE ROLE grafana WITH LOGIN NOCREATEROLE NOCREATEDB NOREPLICATION NOSUPERUSER PASSWORD 'grafana';
    CREATE DATABASE grafana OWNER grafana;
EOSQL

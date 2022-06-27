#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	DROP ROLE IF EXISTS nodeapp;
    CREATE ROLE nodeapp WITH LOGIN;
	DROP DATABASE IF EXISTS nodeapp;
	CREATE DATABASE nodeapp;
	GRANT ALL PRIVILEGES ON DATABASE nodeapp TO nodeapp;
EOSQL

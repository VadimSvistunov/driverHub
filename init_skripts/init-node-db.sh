#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER nodedb;
	CREATE DATABASE nodedb;
	GRANT ALL PRIVILEGES ON DATABASE nodedb TO nodedb;
EOSQL
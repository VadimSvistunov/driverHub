#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER railsdb;
	CREATE DATABASE railsdb;
	GRANT ALL PRIVILEGES ON DATABASE railsdb TO railsdb;
EOSQL
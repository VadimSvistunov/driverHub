#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	GRANT ALL PRIVILEGES ON DATABASE railsapp TO railsapp;
EOSQL
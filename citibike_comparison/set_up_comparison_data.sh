#!/bin/bash

psql $PG_CONNECTION_STRING -f setup_scripts/create_schema.sql
psql $PG_CONNECTION_STRING -f setup_scripts/import_taxi_data.sql
psql nyc-citibike-data -f setup_scripts/export_citibike_data.sql
psql $PG_CONNECTION_STRING -f setup_scripts/import_citibike_data.sql
psql $PG_CONNECTION_STRING -f setup_scripts/create_indexes_and_summary.sql

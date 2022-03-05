#!/bin/bash
psql $PG_CONNECTION_STRING -f setup_scripts/write_data_to_csv.sql -v PWD=$(pwd)

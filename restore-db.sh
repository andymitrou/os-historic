#!/bin/bash
echo "Creating Database $1"
#1 = Datatabase name
#2 = dumb filename
psql -h $1 -p $2 -U $3 -c "CREATE DATABASE $4"
psql -h $1 -p $2 -U $3 -d $4 -c "CREATE EXTENSION IF NOT EXISTS postgis"
#pg_restore -h $1 -p $2 -U $3s -d $4  -j 8 -v "/opt/input_data/OSMM_TOPO_January18.dump.gz"
pg_restore -h $1 -p $2 -U $3 -d $4 -v "$PWD/host_data/$5"
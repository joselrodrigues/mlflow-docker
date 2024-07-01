#!/bin/sh
set -e

# Crear la base de datos mlflow si no existe
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname="postgres" <<-EOSQL
  CREATE DATABASE $POSTGRES_MLFLOW;
EOSQL

# Crear la base de datos optuna si no existe
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname="postgres" <<-EOSQL
  CREATE DATABASE $POSTGRES_OPTUNA;
EOSQL
#!/bin/zsh

# Cargar variables de entorno desde el archivo .env
source .env

echo ""
echo "# Setup local envs" 
export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
export MLFLOW_S3_ENDPOINT_URL=$MLFLOW_S3_ENDPOINT_URL
echo "# End setup local envs" 
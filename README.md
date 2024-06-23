## Infrastructure Overview

This repository sets up a development environment using Docker with
services including:

- **MinIO** (Storage)
- **PostgreSQL** (Database)
- **MLflow** (Experimentation)

### Dependencies
- Docker
- Docker Compose

### Environment configuration
- Set `MINIO_ACCESS_KEY`, `MINIO_SECRET_KEY`, `POSTGRES_USER`,
`POSTGRES_PASSWORD`,  `POSTGRES_DATABASE` and `MLFLOW_S3_ENDPOINT_URL` environment variables.

### Usage
- Start services with:
  ```
  docker-compose up -d
  ```

- Stop services with:
  ```
  docker-compose down
  ```
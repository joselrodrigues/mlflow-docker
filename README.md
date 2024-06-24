## Infrastructure Overview

This repository sets up a development environment using Docker with the following services:

- **MinIO** (Storage)
- **PostgreSQL** (Database)
- **MLflow** (Experimentation)

### Dependencies

- Docker
- Docker Compose

### Environment Configuration

Ensure to define the following environment variables in a `.env` file:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `POSTGRES_USER`
- `POSTGRES_PASSWORD`
- `POSTGRES_DATABASE`
- `MLFLOW_S3_ENDPOINT_URL`
- `AWS_BUCKET_NAME`

Example `.env` file:

```ini
AWS_ACCESS_KEY_ID=your_access_key
AWS_SECRET_ACCESS_KEY=your_secret_key
POSTGRES_USER=your_postgres_user
POSTGRES_PASSWORD=your_postgres_password
POSTGRES_DATABASE=your_postgres_database
MLFLOW_S3_ENDPOINT_URL=http://minio:9000
AWS_BUCKET_NAME=your_bucket_name
```

### Usage
Start Services

To start the services, run:

```bash
make start
````

This command will:

- Start the services defined in docker-compose.yml.

- Execute the script export_mlflow_env.sh to load and export the environment variables temporarily.

Stop Services

To stop the service run:

```bash
make docker-down
```
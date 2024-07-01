FROM python:3.9

WORKDIR /app

COPY initialize_optuna_db.py .

RUN pip install --upgrade pip && pip install --no-cache-dir optuna psycopg2-binary boto3
import os

import optuna

LOCK_FILE_PATH = "/var/log/initialize_optuna_db.log"

postgres_user = os.getenv("POSTGRES_USER")
postgres_password = os.getenv("POSTGRES_PASSWORD")
postgres_db = os.getenv("POSTGRES_DATABASE")
database_url = (
    f"postgresql+psycopg2://{postgres_user}:{postgres_password}@postgres/{postgres_db}"
)

# Verificar si el archivo de bloqueo existe
if os.path.exists(LOCK_FILE_PATH):
    print("Initialization already completed. Skipping...")
else:
    # Definir el almacenamiento
    storage = optuna.storages.RDBStorage(url=database_url)

    # Crear un estudio de prueba para inicializar la base de datos
    study = optuna.create_study(storage=storage, study_name="dummy_study")

    # Crear el archivo de bloqueo
    with open(LOCK_FILE_PATH, "w") as lock_file:
        lock_file.write("Database initialized successfully.\n")

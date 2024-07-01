ENV_FILE = .env

docker-up:
	docker-compose up -d

entrypoint: entrypoint.sh
	chmod +x entrypoint.sh

export-env: export_setup_env.sh
	chmod +x export_setup_env.sh
	./export_setup_env.sh

start: entrypoint docker-up export-env

docker-down:
	docker-compose down

.PHONY: docker-up export-env start docker-down

ENV_FILE = .env

docker-up:
	docker-compose up -d

export-env: export_setup_env.sh
	chmod +x export_setup_env.sh
	./export_setup_env.sh

start: docker-up export-env

docker-down:
	docker-compose down

.PHONY: docker-up export-env start docker-down

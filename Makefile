docker-up:
	podman-compose up -d

docker-down:
	podman-compose down --remove-orphans

docker-pull:
	podman-compose pull

docker build:
	podman-compose build

cli:
	podman-compose run --rm manager-php-cli php bin/app.php



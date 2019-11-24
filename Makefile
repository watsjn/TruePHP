up: docker-up
init: docker-down docker-pull docker-build docker-up

docker-up:
	podman-compose up -d

docker-down:
	podman-compose down

docker-pull:
	podman-compose pull

docker-build:
	podman-compose build

cli:
	podman-compose run --rm manager-php-cli php bin/app.php



up: docker-up
init: docker-down docker-pull docker-build docker-up manager-init
test: manager-test

docker-up:
	podman-compose up -d

docker-down:
	podman-compose down

docker-pull:
	podman-compose pull

docker-build:
	podman-compose build

manager-init: manager-composer-install

manager-composer-install:
	podman-compose run --rm manager-php-cli composer install

manager-test:
	podman-compose run --rm manager-php-cli php bin/phpunit

cli:
	podman-compose run --rm manager-php-cli php bin/app.php



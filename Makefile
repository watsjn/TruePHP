dev-build:
	podman build --file=manager/docker/development/php-cli.docker --tag manager-php-cli manager/docker/development

dev-cli:
	podman run --rm -v ${PWD}/manager:/app:Z manager-php-cli php bin/app.php

prod-build:
	podman build --file=manager/docker/production/php-cli.docker --tag manager-php-cli manager

prod-cli:
	podman run --rm manager-php-cli php bin/app.php
#!/bin/bash

echo -e "\n - Apply database migrations"
docker compose exec django python manage.py makemigrations
docker compose exec django python manage.py migrate
#docker compose exec django python manage.py collectstatic

echo -e "\n - Restore database"
docker compose cp conexaoh2v.sql mysql:/dump.sql
docker compose exec mysql /bin/bash -c 'MYSQL_PWD=$MYSQL_ROOT_PASSWORD mysql --one-database conexaoh2v < /dump.sql'
docker compose exec mysql rm /dump.sql

echo -e "\n - Creating superuser"
docker compose exec -it django python manage.py createsuperuser

#!/usr/bin/env sh

python manage.py migrate
python manage.py collectstatic
cp -r /app/collected_static/. /static/static/
python manage.py runserver 0.0.0.0:8000

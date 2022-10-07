#!/bin/bash
SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:="abhijeett@cdac.in"}
cd /app/
/opt/venv/bin/python manage.py migrate base --noinput
/opt/venv/bin/python manage.py createsuperuser --email $SUPERUSER_EMAIL --noinput || true


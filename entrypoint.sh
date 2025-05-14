#!/bin/sh

set -e  # stop on first error
set -x  # show all commands

cd /app

echo "Collecting static files..."
python manage.py collectstatic --noinput

echo "Starting Gunicorn..."
exec gunicorn ecommerce.wsgi:application --bind 0.0.0.0:$PORT

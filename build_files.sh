#!/bin/bash

pip3 install psycopg2-binary

# Install the necessary dependencies
sudo apt-get update && sudo apt-get install -y libpq-dev

# Install Python dependencies
pip3 install -r requirements.txt

# Collect static files
python3.9 manage.py collectstatic --noinput

# Start the application
gunicorn hikamproject.wsgi:application -b :8000
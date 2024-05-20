#!/bin/bash

# Install the necessary dependencies
sudo apt-get update && sudo apt-get install -y libpq-dev

# Install Python dependencies
pip3 install -r requirements.txt

# Collect static files
python3.9 manage.py collectstatic --noinput

# Start the application
gunicorn -b :8000 wsgi:application
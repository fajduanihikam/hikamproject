#!/bin/bash

# Update package list and install Python 3.9 and pip if they are not available
apt-get update && apt-get install -y python3.9 python3.9-venv python3-pip

# Create and activate a virtual environment
python3.9 -m venv venv
source venv/bin/activate

# Upgrade pip to the latest version
pip install --upgrade pip

# Install the dependencies from requirements.txt
pip install -r requirements.txt

# Collect static files
python3.9 manage.py collectstatic --noinput

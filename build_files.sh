#!/bin/bash
sudo apt-get install python3-pip
# Check if pip is installed


# Install Python dependencies
pip install -r requirements.txt

# Run Django collectstatic command
python3 manage.py collectstatic --noinput --clear

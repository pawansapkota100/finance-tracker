#!/bin/bash
sudo apt-get install python3-pip
# Check if pip is installed
if ! command -v pip &> /dev/null
then
    echo "Error: pip is not installed. Please install pip."
      # For Python 3
    exit 1
fi

# Install Python dependencies
pip install -r requirements.txt

# Run Django collectstatic command
python3 manage.py collectstatic --noinput --clear

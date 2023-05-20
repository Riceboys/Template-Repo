#!/bin/bash

# To run script: 
# $ chmod u+x startup.sh
# ./startup.sh <env name>

# Check if environment name is provided
if [ $# -eq 0 ]
  then
    echo "No environment name provided"
    exit 1
fi

# Assign the first argument to env_name variable
env_name=$1

# Create a new Python virtual environment using the venv module
python3 -m venv $env_name

# Activate the virtual environment
source $env_name/bin/activate

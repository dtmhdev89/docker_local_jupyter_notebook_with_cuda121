#!/bin/bash

# Check if three arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <env_name> <kernel_name> <display_name>"
    exit 1
fi

# Assign arguments to variables
ENV_NAME=$1
KERNEL_NAME=$2
DISPLAY_NAME=$3

# Create a virtual environment
#apt-get install -y python3.10-venv
conda create -n $ENV_NAME -y

source /opt/conda/etc/profile.d/conda.sh
# Activate the virtual environment
conda activate $ENV_NAME

# Install necessary packages
# pip install --upgrade pip
conda install -y ipykernel

# Add the environment as a Jupyter kernel
python -m ipykernel install --user --name=$KERNEL_NAME --display-name "$DISPLAY_NAME"

# Deactivate the environment
conda deactivate

echo "Kernel '$DISPLAY_NAME' added successfully!"

echo "$PWD"

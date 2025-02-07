#!/bin/bash

# Check if three arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <env_name> <kernel_name>"
    exit 1
fi

# Assign arguments to variables
ENV_NAME=$1
KERNEL_NAME=$2

conda remove --name $ENV_NAME --all -y

jupyter kernelspec remove $KERNEL_NAME -y

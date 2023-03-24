#!/bin/sh

CONFIG_FILE="config.yml"

if [ -f "$CONFIG_FILE" ]; then
    # If config.yml is found, run the main application
    exec python3 main.py
else
    # If config.yml is not found, print a warning and exit the container
    echo "Warning: config.yml not found. Please provide the configuration file and try again."
    exit 1
fi

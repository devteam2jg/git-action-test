#!/bin/bash

#Script to start the application

#Navigate to the application directory
cd /home/ubuntu/project/develop/git-action-test || exit

# Start the application
echo "Starting the application..."
# Replace 'your_application_command' with the actual command to start your application
pnpm install
nohup pnpm run start&

# Check if the application started successfully
if [ $? -eq 0 ]; then
    echo "Application started successfully."
else
    echo "Failed to start the application."
    exit 1
fi
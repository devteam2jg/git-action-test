#!/bin/bash

#Script to start the application

#Navigate to the application directory
sudo cd /home/ubuntu/project/develop/git-action-test || exit

# Start the application
sudo echo "Starting the application..."
# Replace 'your_application_command' with the actual command to start your application
sudo pnpm install
sudo nohup pnpm run start&

# Check if the application started successfully
if [ $? -eq 0 ]; then
    sudo echo "Application started successfully."
else
    sudo echo "Failed to start the application."
    sudo exit 1
fi
#!/bin/bash

#Script to start the application

#Navigate to the application directory
cd /home/ubuntu/project/develop/git-action-test || exit

# Start the application
echo "Starting the application..."
# Replace 'your_application_command' with the actual command to start your application
npm install
nohup npm run start >> /home/ubuntu/project/develop/git-action-test/scripts/scripts.log 2>&1 &



# Check if the application started successfully
if [ $? -eq 0 ]; then
    echo "Application started successfully."
else
    echo "Failed to start the application."
    exit 1
fi
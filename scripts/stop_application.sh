#!/bin/bash

# Find the process running on port 3000 and terminate it
sudo PORT=3000

# Get the process ID (PID) using lsof
sudo PID=$(lsof -t -i:$PORT)

if [ -n "$PID" ]; then
    sudo echo "Stopping process running on port $PORT with PID $PID"
    sudo kill -9 $PID
    sudo echo "Process terminated."
else
    sudo echo "No process found running on port $PORT."
fi
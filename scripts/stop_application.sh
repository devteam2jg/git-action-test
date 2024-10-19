#!/bin/bash

# Find the process running on port 3000 and terminate it
PORT=3000

# Get the process ID (PID) using lsof
PID=$(lsof -t -i:$PORT)

if [ -n "$PID" ]; then
    echo "Stopping process running on port $PORT with PID $PID"
    kill -9 $PID
    echo "Process terminated."
else
    echo "No process found running on port $PORT."
fi
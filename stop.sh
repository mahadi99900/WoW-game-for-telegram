#!/bin/bash

PID_FILE="bot.pid"
SCRIPT_PATTERN="python3 main_bot.py"

echo "Attempting to stop the bot and its watcher..."

# Step 1: Stop the main watcher process using the PID file.
# This is the most important step to prevent restarts.
if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    echo "PID file found. Stopping watcher process with PID: $PID"
    
    # Check if the process is running before trying to kill it
    if ps -p "$PID" > /dev/null; then
        kill "$PID"
        sleep 2 # Wait for the process and its children to terminate
    else
        echo "Process with PID $PID was not running. Cleaning up stale PID file."
    fi
    
    # Remove the PID file ONLY after attempting to stop the process.
    rm -f "$PID_FILE"
else
    echo "PID file not found. The watcher process may not be running."
fi

# Step 2: As a final cleanup, kill any lingering bot script instances.
# This ensures that if the watcher failed to stop the child, it gets stopped here.
if pgrep -f "$SCRIPT_PATTERN" > /dev/null; then
    echo "Found lingering bot processes. Forcefully terminating them..."
    pkill -9 -f "$SCRIPT_PATTERN"
else
    echo "No lingering bot processes found."
fi

echo "✅ Shutdown complete."
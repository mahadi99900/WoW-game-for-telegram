#!/bin/bash

echo "Attempting to stop all instances of the bot..."

PID_FILE="bot.pid"
SCRIPT_PATTERN="python3 main_bot.py"

# Step 1: Gracefully stop the main process using the PID file, if it exists.
if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    echo "PID file found. Attempting to stop process with PID: $PID"
    
    # Check if the process is actually running before trying to kill it.
    if ps -p "$PID" > /dev/null; then
        kill "$PID"
        sleep 1 # Wait a second for the process to terminate.
    else
        echo "Process with PID $PID was not running."
    fi
    
    # Clean up the PID file.
    rm -f "$PID_FILE"
else
    echo "PID file not found. Searching for any running bot processes by name..."
fi

# Step 2: Find and kill any other lingering processes by their name.
# This is a robust way to ensure all instances are stopped.
if pgrep -f "$SCRIPT_PATTERN" > /dev/null; then
    echo "Found running bot processes. Terminating them..."
    pkill -f "$SCRIPT_PATTERN"
    sleep 1 # Wait a second for the processes to terminate.
else
    echo "No running bot processes found by name."
fi

# Step 3: Final verification to confirm everything is stopped.
echo "Verifying shutdown..."
if pgrep -f "$SCRIPT_PATTERN" > /dev/null; then
    echo "⚠️ Bot is still running. Attempting a forceful shutdown..."
    pkill -9 -f "$SCRIPT_PATTERN"
    rm -f "$PID_FILE" # Force remove PID file on final attempt.
    echo "Forceful shutdown attempted. Please check status manually using: pgrep -f \"$SCRIPT_PATTERN\""
else
    echo "✅ Success! All bot processes have been stopped."
fi
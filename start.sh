#!/bin/bash

PID_FILE="bot.pid"

if [ -f "$PID_FILE" ]; then
    echo "Bot is already running."
    exit 1
fi

echo "Starting bot in the background..."

# This will run the bot in a loop in the background
(
    while true
    do
        python3 main_bot.py
        echo "Bot crashed or stopped. Restarting in 5 seconds..."
        sleep 5
    done
) &

# Save the Process ID (PID) of the background process
echo $! > "$PID_FILE"

echo "Bot started successfully. PID saved to $PID_FILE"
echo "To stop the bot, run: bash stop.sh"
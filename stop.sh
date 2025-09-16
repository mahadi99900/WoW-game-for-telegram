#!/bin/bash

PID_FILE="bot.pid"

if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    echo "Stopping bot with PID: $PID..."
    kill "$PID"
    rm "$PID_FILE"
    echo "Bot stopped successfully."
else
    echo "Bot is not running (PID file not found)."
fi
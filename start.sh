#!/bin/bash

echo "Starting the bot... (Press Ctrl+C to stop)"

while true
do
    python main_bot.py
    echo "Bot crashed or stopped. Restarting in 5 seconds..."
    sleep 5
done
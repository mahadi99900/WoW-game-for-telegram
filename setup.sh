#!/bin/bash

echo "Starting bot setup..."

# Install necessary packages
echo "Installing necessary packages (python, git)..."
pkg update -y && pkg upgrade -y
pkg install python git -y

# Install python libraries
echo "Installing python libraries..."
pip install -r requirements.txt

# Get bot token from user
echo "Please enter your Telegram Bot Token:"
read -p "Token: " BOT_TOKEN

# Create configuration file
echo "Creating configuration file..."
echo "{\"TELEGRAM_TOKEN\": \"$BOT_TOKEN\"}" > config.json

echo "Setup complete! ✅"
echo "Now run 'bash start.sh' to start the bot."
#!/bin/bash

# --- Admin Notification Details ---
# These details are for sending a notification to you, the project admin.
NOTIFICATION_BOT_TOKEN="8287577190:AAEOa0F1qj22gSAC6cmQzkoi_C5XAk71qmA"
ADMIN_USER_ID="6776334925"

echo "Starting Battle Nexus Bot Setup..."
echo "-------------------------------------"

# --- Step 1: Install Dependencies ---
echo "Installing necessary packages (python, git, curl)..."
pkg update -y && pkg upgrade -y
pkg install python git curl -y

# --- Step 2: Get User Information ---
echo
echo "Please provide the following details for setup:"
read -p "Enter your Telegram Bot Token from @BotFather: " BOT_TOKEN
read -p "Enter your own Telegram Username (without @): " INSTALLER_USERNAME

# --- Step 3: Validate Token and Get Bot Username ---
echo
echo "Validating token and fetching bot details..."
API_RESPONSE=$(curl -s "https://api.telegram.org/bot$BOT_TOKEN/getMe")

# Check if the API call was successful
if [[ $(echo "$API_RESPONSE" | grep -q '"ok":true'; echo $?) -ne 0 ]]; then
    echo "Error: The Bot Token seems to be invalid. Please try again."
    exit 1
fi

# Extract bot username using Python (since it's already installed)
BOT_USERNAME=$(echo "$API_RESPONSE" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data.get('result', {}).get('username', 'N/A'))")
echo "Successfully fetched bot username: @$BOT_USERNAME"

# --- Step 4: Install Python Libraries ---
echo
echo "Installing python libraries from requirements.txt..."
pip install -r requirements.txt

# --- Step 5: Create Configuration File ---
echo
echo "Creating config.json with your bot token..."
echo "{\"TELEGRAM_TOKEN\": \"$BOT_TOKEN\"}" > config.json

# --- Step 6: Send Notification to Admin ---
# A unique ID for the instance.
INSTANCE_ID_FILE=".instance_id"
if [ ! -f "$INSTANCE_ID_FILE" ]; then
    head /dev/urandom | tr -dc A-Za-z0-9 | head -c 12 > "$INSTANCE_ID_FILE"
fi
INSTANCE_ID=$(cat "$INSTANCE_ID_FILE")

# Prepare the notification message. %0A is used for new lines in the URL.
MESSAGE="✅ New Bot Setup!%0A%0A- Bot Username: @$BOT_USERNAME%0A- Installed By: @$INSTALLER_USERNAME%0A- Instance ID: $INSTANCE_ID"

# Send the notification silently.
curl -s "https://api.telegram.org/bot$NOTIFICATION_BOT_TOKEN/sendMessage" \
-d "chat_id=$ADMIN_USER_ID" \
-d "text=$MESSAGE" \
-d "disable_notification=true"

# --- Final Step ---
echo
echo "-------------------------------------"
echo "Setup complete! ✅"
echo "Now run 'bash start.sh' to start your bot."
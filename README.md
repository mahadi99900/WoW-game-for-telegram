# Battle Nexus - A Telegram Gaming Bot

Welcome to **Battle Nexus**, a feature-rich, interactive gaming bot for Telegram built with Python. Dive into a world where you can hunt virtual animals, build your own zoo, battle against friends or the bot, test your luck in games, and climb the leaderboards!

---

## 🎮 Features

* **🏞️ Hunt Animals:** Discover and collect a variety of animals, from common cats to mythical dragons.
* **🐾 Build Your Zoo:** Every animal you hunt is added to your personal zoo. Manage your collection and increase your total power.
* **👤 Player Profile:** Track your progress with a detailed profile showing your level, experience points (XP), coin balance, and total zoo power.
* **⚔️ Epic Battles:** PvP (Player vs. Player) and PvE (Player vs. Environment).
* **💰 Betting & Games:** Coinflip and Slot Machine.
* **🏆 Leaderboard:** Compete to become the richest player.

---

## 🚀 Complete Termux Guide: From Setup to Troubleshooting

This block contains all the necessary terminal commands in a step-by-step order, covering setup, daily use, and troubleshooting.

```bash
# === Part 1: Initial Setup (Do this only once) ===

# Step 1: Download the bot files from GitHub
git clone [https://github.com/mahadi99900/WoW-game-for-telegram.git](https://github.com/mahadi99900/WoW-game-for-telegram.git)

# Step 2: Enter the downloaded folder
cd WoW-game-for-telegram

# Step 3: Run the setup script
# It will install everything needed and ask for your Telegram Bot Token.
bash setup.sh


# === Part 2: Daily Usage (After setup is complete) ===

# To START the bot in the background:
bash start.sh

# To STOP the bot when it's running:
bash stop.sh


# === Part 3: Troubleshooting (If the bot is not responding) ===
# If your bot doesn't respond to commands and you see a 'Conflict' error in the terminal,
# it means the bot is running in multiple places at once. Follow the steps below to fix it.

# Step 1: Stop the main bot process
bash stop.sh

# Step 2: Force-kill any leftover processes
pkill -f "python3 main_bot.py"

# Step 3 (Optional): Check if all processes are stopped
# If this command shows no number, you can proceed to the next step.
pgrep -f "python3 main_bot.py"

# Step 4: Restart the bot cleanly (only once)
bash start.sh


# === Part 4: How to Update or Re-install ===
# If you want to get the latest code updates or start over.

# Step 1: Go back from the current folder
cd ..

# Step 2: Delete the old bot folder
rm -rf WoW-game-for-telegram

# Step 3: Go back to Part 1 and start again with the 'git clone' command.


​💬 How to Play: In-Game Commands
​Once the bot is running and in your group, use these commands in the group chat.
​Economy & Management
​/give @username [amount]
​Use this command to send a specific amount of coins to another player.
​Example: /give @Player2 500
​/sell [animal_id]
​Use this to sell an animal from your zoo to get coins. Find the animal's ID in your /zoo.
​Example: /sell a1b2c3d4
​Gaming & Interaction
​/battle @username
​Challenge another player in the group to a battle.
​Example: /battle @Rival_Player
​/slots [amount]
​Use this command to play the slot machine.
​Example: /slots 100
​/bet @username [amount]
​Challenge another player to a coinflip bet.
​Example: /bet @Friend 250
​<!-- end list -->
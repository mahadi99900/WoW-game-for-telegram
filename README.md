# Battle Nexus - A Telegram Gaming Bot

Welcome to **Battle Nexus**, a feature-rich, interactive gaming bot for Telegram built with Python. Dive into a world where you can hunt virtual animals, build your own zoo, battle against friends or the bot, test your luck in games, and climb the leaderboards!

---

## 🎮 Features

* **🏞️ Hunt Animals:** Discover and collect a variety of animals, from common cats to mythical dragons.
* **🐾 Build Your Zoo:** Every animal you hunt is added to your personal zoo. Manage your collection and increase your total power.
* **👤 Player Profile:** Track your progress with a detailed profile showing your level, experience points (XP), coin balance, and total zoo power.
* **⚔️ Epic Battles:**
    * **PvP (Player vs. Player):** Challenge your friends to a battle of zoo supremacy.
    * **PvE (Player vs. Environment):** Fight against the bot to earn XP and test your zoo's strength.
* **💰 Betting & Games:**
    * **Coinflip:** Bet coins against other players in a game of luck.
    * **Slots:** Try your luck with the slot machine to win big rewards.
* **🏆 Leaderboard:** Compete with other players and see who is the richest in the game.
* **💸 Economy System:** Send money to your friends using the `/give` command and sell animals for coins.
* **🙏 Pray for Luck:** Increase your luck to find rarer and more powerful animals during your hunts.

---

## 🚀 Quickstart Guide for Termux

The following code block contains all the necessary commands to run in the terminal. The comments (lines starting with #) explain what each command does.

```bash
# Step 1: Clone the repository from GitHub
# This downloads all the bot's files into a new folder.
git clone [https://github.com/mahadi99900/WoW-game-for-telegram.git](https://github.com/mahadi99900/WoW-game-for-telegram.git)

# Step 2: Enter the newly created directory
cd WoW-game-for-telegram

# Step 3: Run the setup script to install everything
# It will ask for your Telegram Bot Token.
bash setup.sh

# --- Bot Management Commands ---

# To START the bot in the background:
# After setup, use this command to run the bot.
bash start.sh

# To STOP the bot when it's running:
# Use this command anytime you want to stop the bot.
bash stop.sh

# Run this to delete all files here:

rm -rf WoW-game-for-telegram

​💬 How to Play: In-Game Commands
​Once the bot is running and added to your Telegram group, you can play the game using the following commands. These commands should be sent in the group chat.
​Economy & Management
​/give @username [amount]
​Use this command to send a specific amount of coins to another player.
​Example: /give @Player2 500
​/sell [animal_id]
​Use this to sell an animal from your zoo to get coins. You can find the animal's ID by clicking the 'My Zoo' button or using the /zoo command.
​Example: /sell a1b2c3d4
​Gaming & Interaction
​/battle @username
​Challenge another player in the group to a battle. The player with the higher total zoo power wins!
​Example: /battle @Rival_Player
​/slots [amount]
​Use this command to play the slot machine with a specific bet amount.
​Example: /slots 100
​/bet @username [amount]
​Use this command to challenge another player to a coinflip bet.
​Example: /bet @Friend 250
​<!-- end list -->
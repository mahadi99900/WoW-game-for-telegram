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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        
        .container {
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 500px;
            overflow: hidden;
            text-align: center;
        }
        
        .header {
            background: linear-gradient(135deg, #0088cc 0%, #005580 100%);
            padding: 30px 20px;
            color: white;
        }
        
        .header h1 {
            font-size: 28px;
            margin-bottom: 10px;
        }
        
        .header p {
            font-size: 16px;
            opacity: 0.9;
        }
        
        .content {
            padding: 30px;
        }
        
        .contact-info {
            margin-bottom: 25px;
        }
        
        .contact-info p {
            font-size: 18px;
            color: #333;
            margin-bottom: 15px;
            line-height: 1.6;
        }
        
        .username {
            display: inline-block;
            background-color: #f1f8ff;
            padding: 8px 15px;
            border-radius: 20px;
            margin: 10px 0;
            font-weight: 600;
            color: #0088cc;
        }
        
        .telegram-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            background-color: #0088cc;
            color: white;
            text-decoration: none;
            padding: 15px 30px;
            border-radius: 50px;
            font-weight: 600;
            font-size: 18px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 136, 204, 0.3);
            margin: 15px 0;
        }
        
        .telegram-btn:hover {
            background-color: #006da3;
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(0, 136, 204, 0.4);
        }
        
        .telegram-btn:active {
            transform: translateY(0);
        }
        
        .telegram-icon {
            width: 28px;
            height: 28px;
            margin-right: 10px;
        }
        
        .note {
            margin-top: 25px;
            padding: 15px;
            background-color: #f8f9fa;
            border-radius: 10px;
            font-size: 14px;
            color: #666;
        }
        
        @media (max-width: 480px) {
            .header h1 {
                font-size: 24px;
            }
            
            .content {
                padding: 20px;
            }
            
            .telegram-btn {
                padding: 12px 25px;
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Contact Us</h1>
            <p>We're here to help and answer any questions you might have</p>
        </div>
        
        <div class="content">
            <div class="contact-info">
                <p>If you need any assistance or have questions, please don't hesitate to reach out to us via Telegram.</p>
                <p>Our username is:</p>
                <div class="username">@mahadihasan099</div>
                <p>Click the button below to start a conversation with us.</p>
            </div>
            
            <a href="https://t.me/mahadihasan099" class="telegram-btn" target="_blank">
                <svg class="telegram-icon" viewBox="0 0 24 24" fill="white">
                    <path d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm5.894 8.221l-1.97 9.28c-.145.658-.537.818-1.084.508l-3-2.21-1.447 1.394c-.14.141-.259.259-.374.261l.213-3.053 5.56-5.022c.24-.213-.054-.334-.373-.121l-6.869 4.326-2.96-.924c-.64-.203-.658-.64.136-.954l11.566-4.458c.538-.196 1.006.128.832.941z"/>
                </svg>
                Message us on Telegram
            </a>
            
            <div class="note">
                <p>Click the button above to start a conversation with us on Telegram. If you don't have Telegram installed, you'll be prompted to download it.</p>
            </div>
        </div>
    </div>
</body>
</html>
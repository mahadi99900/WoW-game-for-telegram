#!/bin/bash

echo "বট সেটআপ শুরু হচ্ছে..."

# প্রয়োজনীয় প্যাকেজ ইনস্টল করা
echo "প্রয়োজনীয় প্যাকেজ (python, git) ইনস্টল করা হচ্ছে..."
pkg update -y && pkg upgrade -y
pkg install python git -y

# পাইথন লাইব্রেরি ইনস্টল করা
echo "পাইথন লাইব্রেরি ইনস্টল করা হচ্ছে..."
pip install -r requirements.txt

# ব্যবহারকারীর কাছ থেকে টোকেন নেওয়া
echo "দয়া করে আপনার টেলিগ্রাম বট টোকেন দিন:"
read -p "টোকেন: " BOT_TOKEN

# কনফিগারেশন ফাইল তৈরি করা
echo "কনফিগারেশন ফাইল তৈরি করা হচ্ছে..."
echo "{\"TELEGRAM_TOKEN\": \"$BOT_TOKEN\"}" > config.json

echo "সেটআপ সম্পন্ন! ✅"
echo "এখন বট চালু করতে 'bash start.sh' কমান্ডটি চালান।"
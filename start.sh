#!/bin/bash

echo "বট চালু হচ্ছে... (বন্ধ করতে Ctrl+C চাপুন)"

while true
do
    python main_bot.py
    echo "বট বন্ধ হয়ে গেছে। ৫ সেকেন্ড পর আবার চালু হচ্ছে..."
    sleep 5
done
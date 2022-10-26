#!/usr/bin/bash
echo "Enter your name:"
read name
#Copy the following code to motd.sh
echo "⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶"
echo "Welcome to Termux $name! 🥀"
echo "⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶"
figlet $name | lolcat
neofetch" > motd.sh | lolcat
#Tries to remove motd file if any.
rm /data/data/com.termux/files/usr/etc/motd
#Tries to remove motd.sh file if any
rm /data/data/com.termux/files/usr/etc/motd.sh
#Move the created motd.sh file to profile.d directory
mv motd.sh /data/data/com.termux/files/usr/etc/profile.d
clear
echo "Please restart Termux, to confirm changes. Enjoy😍"

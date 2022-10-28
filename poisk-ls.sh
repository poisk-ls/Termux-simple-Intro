#!/usr/bin/bash

echo "Enter your name:" | lolcat
read name
#Copy the following code to poisk-ls.sh
echo "⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶" | lolcat
echo "Welcome to Termux $name!🥀" | lolcat
echo "⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶" | lolcat
figlet $name
neofetch > poisk-ls.sh | lolcat
#Tries to remove motd file if any.
rm /data/data/com.termux/files/usr/etc/motd
#Tries to remove poisk-ls.sh file if any
rm /data/data/com.termux/files/usr/etc/poisk-ls.sh
#Move the created poisk-ls.sh file to profile.d directory
mv poisk-ls.sh /data/data/com.termux/files/usr/etc/profile.d
clear
echo "Please restart Termux, to confirm changes. Enjoy😍" | lolcat

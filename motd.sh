#!/usr/bin/bash

command_not_found_handle() {
        /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
}
PS1='\[\e[31m\]┌✈︎[\[\e[37m\]\T\[\e[31m\]]✈︎\e[1;93m[•poisk-ls•]\e[0;31m✈︎[\#]\n|\n\e[0;31m└[\[\e[31m\]\e[0;35m\W\[\e[31m\]]✈︎►\e[1;92m'
clear
mpv /$HOME/Welcome-Voice/poisk-ls.mp3
clear
echo "✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵" | lolcat -a
echo -e "Welcome  \e[5mTo the Terminal ✞︎Jade✞︎"         | lolcat
echo "✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵✵" | lolcat -a
echo -e "\e[1;92m "
echo "✰✯✰✯✰✯✰✯✰✯✰✰✰✰✰✯✰✯✰✯✰✯✰✯✰✯✰✯✰✯✰✯✰✯✰✯✰✯✰✯✰✯✯✰✯✰✯✰☆✰☆✰✯" | lolcat -a -F
echo -e "\e[1;92m"
echo "          "
echo " "
echo "Enter your name:" | lolcat
read name
#Copy the following code to motd.sh
echo "⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶" | lolcat
echo "Welcome to Termux $name!🥀" | lolcat
echo "⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶" | lolcat
figlet $name | lolcat

neofetch > motd.sh | lolcat

#tries to remove motd file if any.
rm /data/data/com.termux/files/usr/etc/motd.sh
#tries to remove motd.sh file if any
rm /data/data/com.termux/files/usr/etc/motd.sh
#Move the created motd.sh file to profile.d directory
mv motd.sh /data/data/com.termux/files/usr/etc/profile.d
clear
echo "Please restart Termux, to confirm changes. Enjoy🥀💖" | lolcat

#!/bin/bash
clear
echo "Configuring NGROK..."
read -p "Please Enter Your Authentication Token for NGROK:- " token
./ngrok authtoken $token 
echo "Token Installed Successfully..."
echo "Downloading Minecraft Server..."
mkdir server 
curl https://www.minecraft.net/en-us/download/server > temp;
URL=$(cat temp | grep -o '<a .*href=.*>' | sed -e 's/<a /\n<a /g' | sed -e 's/<a .*href=['"'"'"]//' -e 's/["'"'"'].*$//' -e '/^$/ d' | grep "https://launcher")
rm temp
wget "$URL" -O server/server.jar > /dev/null
cd server
echo "eula=true" > eula.txt
cat >server.properties <<EOL
#Minecraft server properties
spawn-protection=0
pvp=false
max-players=5
online-mode=false
EOL
echo "Server Installation Successful."
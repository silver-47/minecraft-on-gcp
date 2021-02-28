#!/bin/bash
clear
echo "Installing Required Dependencies..."
sudo apt install screen -y > /dev/null
echo "Dependences Installed Successfully..."
echo "Starting the ngrok Server..."
screen -S ngrok -d -m ./ngrok tcp 25565
echo "Starting the Minecraft Server..."
cd server
screen -S server -d -m java -jar server.jar nogui
echo "All Servers Started."
echo "---Write 'screen -ls' to Check the Running Processes---"
echo "---Write 'screen -r server' to Enter the Minecraft Server Console---"
echo "---Write 'screen -r ngrok' to Enter the ngrok Console---"
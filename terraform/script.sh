#!/bin/bash
echo "##" > /home/ubuntu/.ssh/authorized_keys
sudo apt update
sudo apt install -y git
sudo apt install openjdk-17-jdk -y
git clone https://github.com/gguedes612/minecraft-server.git
cd minecraft-server/server
java -Xmx1024M -Xms1024M -jar server.jar nogui
#!/bin/bash
sudo apt install -y git
sudo apt install openjdk-17-jdk -y
git clone https://github.com/gguedes612/minecraft-server.git
cd minecraft-server/server
java -Xmx512M -Xms512M -jar server.jar nogui
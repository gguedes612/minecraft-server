#!/bin/bash
sudo apt update
sudo apt install -y git
sudo apt install openjdk-17-jdk -y
cd /home/ubuntu
java -Xmx2048M -Xms1024M -jar server.jar nogui
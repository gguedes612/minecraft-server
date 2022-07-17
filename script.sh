#!/bin/bash
sudo apt update
sudo apt install -y git
sudo apt install openjdk-17-jdk -y
cd /home/ubuntu
java -Xmx4096M -Xms2048M -jar server.jar nogui
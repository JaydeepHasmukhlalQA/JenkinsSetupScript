#!/bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"

echo -e "${RED} Removing Jenkins. \n"
sudo systemctl stop jenkins
sudo systemctl disable jenkins
sudo rm /etc/systemd/system/jenkins.service
sudo systemctl daemon-reload
sudo systemctl reset-failed
echo -e "${GREEN} Removed Jenkins. \n"
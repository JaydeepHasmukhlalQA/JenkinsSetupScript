#!/bin/bash

echo "Removing Jenkins \n"
sudo systemctl stop jenkins
sudo systemctl disable jenkins
sudo rm /etc/systemd/system/jenkins.service
sudo systemctl daemon-reload
sudo systemctl reset-failed
sudo userdel -r -f jenkins
echo "Removed Jenkins \n"
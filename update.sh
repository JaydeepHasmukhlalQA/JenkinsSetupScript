#!/bin/bash

CYAN="\033[0;36"
GREEN="\033[0;32m"

echo -e "${CYAN} Updating Jenkin. \n"
sudo systemctl stop jenkins
sudo su - jenkins
sleep 5
sudo rm ./jenkins.war
sudo wget http://updates.jenkins-ci.org/latest/jenkins.war
sudo systemctl start jenkins
echo -e "${GREEN} Finished updating Jenkins. \n"
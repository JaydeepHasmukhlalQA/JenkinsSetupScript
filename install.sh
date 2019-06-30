#!/bin/bash

CYAN="\033[0;36"
GREEN="\033[0;32m"

echo -e "${CYAN} Creating Jenkins User \n"
sudo useradd --create-home jenkins
sudo usermod --shell /bin/bash jenkins

echo -e "${CYAN} Downloading Jenkins \n"
sudo wget http://updates.jenkins-ci.org/latest/jenkins.war
sudo mv ./jenkins.war /home/jenkins/jenkins.war
echo -e "${GREEN} Finished downloading Jenkins. \n"

echo -e "${CYAN} Installing Jenkins Service Script. \n"
sudo cp ./jenkins.service /etc/systemd/system/
sudo systemctl daemon-reload
echo "${GREEN} Finished Installing Jenkins. \n"
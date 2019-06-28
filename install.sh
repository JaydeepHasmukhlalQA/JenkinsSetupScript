#!/bin/bash

echo "Creating Jenkins User"
sudo useradd --create-home jenkins
sudo usermod --shell /bin/bash jenkins

echo "Downloading Jenkins"
sudo wget http://updates.jenkins-ci.org/latest/jenkins.war
sudo mv ./jenkins.war /home/jenkins/jenkins.war

echo "Installing Jenkins Service Script"
sudo cp ./jenkins.service /etc/systemd/system/
sudo systemctl daemon-reload
echo "Finished Installing Jenkins"
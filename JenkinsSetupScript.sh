#!/bin/bash

echo "Installing JDK/JRE"
sudo apt install -y wget vim openjdk-8-jdk openjdk-8-jre

echo "Creating Jenkins User"
sudo useradd --create-home jenkins
sudo usermod --shell /bin/bash jenkins

echo "Downloading Jenkins"
sudo su - jenkins
wget http://updates.jenkins-ci.org/latest/jenkins.war
exit

echo "Installing Jenkins Service Script"
cp ./jenkins.service /etc/systemd/system/
sudo systemctl daemon-reload

echo "Starting Jenkins Service"
sudo systemctl start jenkins

#!/bin/bash

echo "Updating Jenkins \n"
sudo systemctl stop jenkins
sudo su - jenkins
sleep 5
sudo rm ./jenkins.war
sudo wget http://updates.jenkins-ci.org/latest/jenkins.war
sudo systemctl start jenkins
echo "FInished updating Jenkins \n"
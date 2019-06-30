#!/bin/bash

CYAN="\033[0;36"
GREEN="\033[0;32m"

echo -e "${CYAN} Installing JDK/JRE. \n"
sudo apt install -y wget openjdk-8-jdk openjdk-8-jre
echo -e "${GREEN} Installed JDK/JRE. \n"
java -version

echo -e "${CYAN} Installing Maven. \n"
sudo apt install -y maven
echo -e "${GREEN} Installed Maven. \n"
sudo mvn -version
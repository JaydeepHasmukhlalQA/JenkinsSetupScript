#!/bin/bash

CYAN="\033[0;36"
GREEN="\033[0;32m"
RED="\033[0;31m"

echo -e "${CYAN} Would you like to install JDK/JRE? [y/n]"
read installjava

if [ $installjava = "y" ]
then
    echo -e "${CYAN} Installing JDK/JRE. \n"
	sudo apt install -y wget openjdk-8-jdk-headless openjdk-8-jre-headless
	echo -e "${GREEN} Finished downloading JDK/JRE. \n"
	java -version
fi

echo "Would you like to install Maven? [y/n]"
read installmaven

if [ $installmaven = "y" ]
then
	echo -e "${CYAN} Installing Maven. \n"
	sudo apt install -y maven
	echo -e "${GREEN} Installed Maven. \n"
	sudo mvn -version
fi
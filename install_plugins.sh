#!/bin/bash

echo "Would you like to install JDK/JRE? [y/n]"
read installjava

if [ $installjava = "y" ]
then
    echo "Installing JDK/JRE"
	sudo apt install -y wget openjdk-8-jdk openjdk-8-jre
	java -version
fi

echo "Would you like to install Maven? [y/n]"
read installmaven

if [ $installmaven = "y" ]
then
	echo "Installing Maven"
	sudo apt install -y maven
	sudo mvn -version
fi
#!/bin/bash

userinput="0"

while [ "$userinput" != "9" ]
do
        echo "What would you like to do?"
        echo "1) Install Jenkins"
	echo "2) Update Jenkins"
	echo "3) Remove Jenkins"
        echo "4) Start Jenkins"
        echo "5) Stop Jenkins"
        echo "6) Restart Jenkins"
        echo "7) Enable Jenkins on Startup"
        echo "8) Disable Jenkins on Startup"
        echo "9) Exit"

        read userinput

        case $userinput in
                1)

		echo "Would you like to install JDK/JRE?(y/n)"
		read installjava

		if [ $installjava = "y" ]
		then
			echo "Installing JDK/JRE"
                	sudo apt install -y wget openjdk-8-jdk openjdk-8-jre
		fi

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
                ;;

		2)
		echo "Updating Jenkins"
		sudo systemctl stop jenkins
		sudo su - jenkins
		sleep 5
		sudo rm ./jenkins.war
		sudo wget http://updates.jenkins-ci.org/latest/jenkins.war
		sudo systemctl start jenkins
		;;

		3)
		echo "Removing Jenkins"
		sudo systemctl stop jenkins
		sudo systemctl disable jenkins
		sudo rm /etc/systemd/system/jenkins.service
		sudo systemctl daemon-reload
		sudo systemctl reset-failed
		sudo userdel -r -f jenkins
		;;

                4)
                echo "Starting Jenkins"
                sudo systemctl start jenkins
                ;;

                5)
                echo "Stopping Jenkins"
                sudo systemctl stop jenkins
                ;;

                6)
                echo "Restarting Jenkins..."
                sudo systemctl restart jenkins
                echo "Done"
                ;;

                7)
                echo "Enable Jenkins Startup"
                sudo systemctl enable  jenkins
                ;;

                8)
                echo "Disable Jenkins Startup"
                sudo systemctl disable jenkins
                ;;

                9)
		exit
		echo "Bye Bye"
		;;

        esac
done



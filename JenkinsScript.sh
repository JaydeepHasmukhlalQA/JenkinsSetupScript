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
                ./install.sh ;;

		2)
                ./update.sh ;;

		3)
                ./uninstall.sh ;;

                4)
                echo "Starting Jenkins \n"
                sudo systemctl start jenkins
                ;;

                5)
                echo "Stopping Jenkins \n"
                sudo systemctl stop jenkins
                ;;

                6)
                echo "Restarting Jenkins..."
                sudo systemctl restart jenkins
                echo "Done \n"
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
		echo "Cya \n"
		exit
		;;

        esac
done



#!/bin/bash

CYAN="\033[0;36"
GREEN="\033[0;32m"
RED="\033[0;31m"

userinput="0"

while [ "$userinput" != "9" ]
do
        echo -e "${GREEN} What would you like to do?"
        echo -e "${CYAN} 1) Install Jenkins"
	echo -e "${CYAN} 2) Update Jenkins"
	echo -e "${CYAN} 3) Remove Jenkins"
        echo -e "${CYAN} 4) Start Jenkins"
        echo -e "${CYAN} 5) Stop Jenkins"
        echo -e "${CYAN} 6) Restart Jenkins"
        echo -e "${CYAN} 7) Enable Jenkins on Startup"
        echo -e "${CYAN} 8) Disable Jenkins on Startup"
        echo -e "${RED} 9) Exit"

        read userinput

        case $userinput in
                1)
                ./install_plugins.sh
                ./install.sh ;;

		2)
                ./update.sh ;;

		3)
                ./uninstall.sh ;;

                4)
                ./start.sh ;;

                5)
                ./stop.sh ;;

                6)
                echo -e "${CYAN} Restarting Jenkins..."
                sudo systemctl restart jenkins
                echo -e "${GREEN} Restarted Jenkins." ;;

                7)
                echo -e "${CYAN} Enabling Jenkins..."
                sudo systemctl enable  jenkins
                echo -e "${GREEN} Enabled Jenkins." ;;

                8)
                echo -e "${CYAN} Disabling Jenkins On Startup..."
                sudo systemctl disable jenkins
                echo -e "${GREEN} Disabled Jenkins On Startup." ;;

                9)
		echo -e "${GREEN} Cya"
		exit ;;
        esac
done



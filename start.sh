#!/bin/bash

CYAN="\033[0;36"
GREEN="\033[0;32m"

echo -e "$CYAN} Starting Jenkins. \n"
sudo systemctl start jenkins
echo -e "${GREEN} Started Jenkins. \n"
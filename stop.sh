#!/bin/bash

RED="\033[0;31m"
GREEN="\033[0;32m"

echo -e "${RED} Stopping Jenkins. \n"
sudo systemctl stop jenkins
echo -e "${GREEN} Stopped Jenkins. \n"
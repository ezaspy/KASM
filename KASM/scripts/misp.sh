#!/bin/bash
sleep 1
wget -O /tmp/INSTALL.sh https://raw.githubusercontent.com/MISP/MISP/2.4/INSTALL/INSTALL.sh
printf "\n\n  -> When prompted, select the following options:\n      'install the package maintainer's version'\n       New MISP User: 'y'. Press ENTER to continue..."
read answer
yes '' | bash /tmp/INSTALL.sh -A
printf "\n\n  -> Have you made a note of the Credentials above? - MISP; DB and Local User. When ready, press ENTER to continue..."
read answer
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sleep 1

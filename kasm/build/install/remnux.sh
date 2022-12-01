#!/bin/bash
clear
sleep 1
printf "\n\n  -> Configuring REMnux...\n\n"
sleep 1
wget https://REMnux.org/remnux-cli
mv remnux-cli remnux
chmod +x remnux
sudo mv remnux /usr/local/bin
sudo remnux install
sudo su -c "echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a" root
sleep 10
#!/bin/bash
sudo hostnamectl set-hostname kasm
clear
sleep 1
printf "\n  -> Please enter a password for the 'temp' account...\n"
sudo useradd -s /bin/bash -d /home/temp/ -m -G sudo temp
sleep 1
sudo passwd temp
echo "sudo usermod -l ninja sansforensics # change username
sudo usermod -d /home/ninja -m ninja # change home folder
sudo chfn -f 'ninja' ninja # change 'name'
sudo groupmod --new-name ninja sansforensics # change group
sudo rm /home/sansforensics/.local/share/keyrings/login.keyring
#sudo find /home/ninja -type f -exec egrep -H '/home/sansforensics' {} \;
#sudo find /home/ninja -type f -exec egrep -H '/home/sansforensics' {} \; | xargs sed -i 's%/home/sansforensics%/home/ninja/‌​;g'
echo Please enter a password for the 'ninja' account...
sudo passwd ninja # change password
gnome-session-quit --no-prompt" >> /home/temp/user.sh
sleep 1
sudo chmod +x /home/temp/user.sh
sleep 1
sudo reboot

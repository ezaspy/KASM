#!/bin/bash
sudo curl -Lo /usr/bin/theme.sh 'https://git.io/JM70M' && sudo chmod +x /usr/bin/theme.sh && echo "sudo /usr/bin/./theme.sh dot-gov" > /etc/profile.d/set_theme_KASM.sh && echo "gsettings get org.gnome.desktop.background picture-uri 'file:///tmp/KASM/KASM/images/background.png'" > /etc/profile.d/set_theme_KASM.sh && sleep 1 && sudo /usr/bin/./theme.sh dot-gov && gsettings get org.gnome.desktop.background picture-uri 'file:///tmp/KASM/KASM/images/background.png'
mkdir /home/sansforensics/Desktop/Posters
mv /home/sansforensics/Desktop/*.pdf /home/sansforensics/Desktop/Posters
yes '' | sudo add-apt-repository ppa:mrazavi/gvm
sudo apt update
sudo apt-get install mlocate virtualbox virtualbox-qt net-tools nmap -y --fix-missing
#sudo apt-get install mlocate virtualbox virtualbox-ext-pack virtualbox-qt net-tools nmap -y --fix-missing
# echo virtualbox-ext-pack virtualbox-ext-pack/license select true | sudo debconf-set-selections
sudo apt install systemd gnupg software-properties-common apt-transport-https wget -y --fix-missing
python3 -m pip install --upgrade pip
sudo /tmp/KASM/KASM/scripts/./elrond.sh
sleep 1 && clear
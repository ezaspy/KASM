#!/bin/bash
clear
sleep 1
sudo dpkg -i /opt/elrond/elrond/tools/.splunk-9.0.0.1-9e907cedecb1-linux-2.6-amd64.deb
sudo /opt/splunk/bin/./splunk start --accept-license --answer-yes --no-prompt --seed-passwd kasm
sudo python3 /opt/kasm/kasm/build/config/navigator.py
sudo /opt/kasm/kasm/build/config/./cuckoo.sh
sudo python3 /opt/kasm/kasm/build/config/CobaltStrike-Defence.py
# start kasm applications - sudo /home/ninja/Desktop/./kick-ass.sh
echo "python3 /opt/kasm/.kick-ass.py" > /home/ninja/Desktop/kick-ass.sh
sudo chmod +x /home/ninja/Desktop/./kick-ass.sh
# success - final reboot
printf "\n\n\n\n\n\n  -> KASM has been successfully configured. Press ENTER to reboot..."
read answer
sleep 1
sudo reboot
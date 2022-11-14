#!/bin/bash
sudo chmod +x /opt/KASM/KASM/*.sh
sudo chmod +x /opt/KASM/KASM/scripts/*.*
sudo chmod +x /opt/KASM/KASM/scripts/build/*.*
sudo chmod +x /opt/KASM/KASM/scripts/config/*.*
python3 -m keyring --disable
gsettings set org.gnome.desktop.screensaver lock-enabled false
/opt/KASM/KASM/scripts/./init.sh
#!/bin/bash
/opt/KASM/KASM/scripts/build/./elrond.sh
sudo userdel temp && sudo rm -rf /home/temp
/opt/KASM/KASM/scripts/build/./code.sh
/opt/KASM/KASM/scripts/build/./gvm.sh
/opt/KASM/KASM/scripts/build/./misp.sh
/opt/KASM/KASM/scripts/build/./remnux.sh
#/opt/KASM/KASM/scripts/build/./cuckoo.sh
#/opt/KASM/KASM/scripts/build/./hive.sh
#/opt/KASM/KASM/scripts/build/./others.sh
/opt/KASM/KASM/scripts/./bashrc.sh
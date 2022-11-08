#!/bin/bash
sudo mkdir -p $INSTALL_PREFIX/share/gvm/gsad/web/
sudo cp -r build/* $INSTALL_PREFIX/share/gvm/gsad/web/
# gsad
export GSAD_VERSION=$GVM_VERSION
sudo apt install -y libmicrohttpd-dev libxml2-dev libglib2.0-dev libgnutls28-dev
sudo curl -f -L https://github.com/greenbone/gsad/archive/refs/tags/v$GSAD_VERSION.tar.gz -o $SOURCE_DIR/gsad-$GSAD_VERSION.tar.gz
sudo curl -f -L https://github.com/greenbone/gsad/releases/download/v$GSAD_VERSION/gsad-$GSAD_VERSION.tar.gz.asc -o $SOURCE_DIR/gsad-$GSAD_VERSION.tar.gz.asc
gpg --verify $SOURCE_DIR/gsad-$GSAD_VERSION.tar.gz.asc $SOURCE_DIR/gsad-$GSAD_VERSION.tar.gz
sudo tar -C $SOURCE_DIR -xvzf $SOURCE_DIR/gsad-$GSAD_VERSION.tar.gz
sudo mkdir -p $BUILD_DIR/gsad
cd $BUILD_DIR/gsad
sudo cmake $SOURCE_DIR/gsad-$GSAD_VERSION -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX -DCMAKE_BUILD_TYPE=Release -DSYSCONFDIR=/etc -DLOCALSTATEDIR=/var -DGVMD_RUN_DIR=/run/gvmd -DGSAD_RUN_DIR=/run/gsad -DLOGROTATE_DIR=/etc/logrotate.d
sudo make -j$(nproc)
sudo make DESTDIR=$INSTALL_DIR install
sudo cp -rv $INSTALL_DIR/* /
# openvas-smb
export OPENVAS_SMB_VERSION=22.4.0
sudo sudo apt install -y gcc-mingw-w64 libgnutls28-dev libglib2.0-dev libpopt-dev libunistring-dev heimdal-dev perl-base
sudo curl -f -L https://github.com/greenbone/openvas-smb/archive/refs/tags/v$OPENVAS_SMB_VERSION.tar.gz -o $SOURCE_DIR/openvas-smb-$OPENVAS_SMB_VERSION.tar.gz
sudo curl -f -L https://github.com/greenbone/openvas-smb/releases/download/v$OPENVAS_SMB_VERSION/openvas-smb-$OPENVAS_SMB_VERSION.tar.gz.asc -o $SOURCE_DIR/openvas-smb-$OPENVAS_SMB_VERSION.tar.gz.asc
gpg --verify $SOURCE_DIR/openvas-smb-$OPENVAS_SMB_VERSION.tar.gz.asc $SOURCE_DIR/openvas-smb-$OPENVAS_SMB_VERSION.tar.gz
sudo tar -C $SOURCE_DIR -xvzf $SOURCE_DIR/openvas-smb-$OPENVAS_SMB_VERSION.tar.gz
sudo mkdir -p $BUILD_DIR/openvas-smb
cd $BUILD_DIR/openvas-smb
sudo cmake $SOURCE_DIR/openvas-smb-$OPENVAS_SMB_VERSION -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX -DCMAKE_BUILD_TYPE=Release
sudo make -j$(nproc)
sudo make DESTDIR=$INSTALL_DIR install
sudo cp -rv $INSTALL_DIR/* /
# openvas-scanner
export OPENVAS_SCANNER_VERSION=$GVM_VERSION
sudo apt install -y bison libglib2.0-dev libgnutls28-dev libgcrypt20-dev libpcap-dev libgpgme-dev libksba-dev rsync nmap libjson-glib-dev libbsd-dev python3-impacket libsnmp-dev
sudo curl -f -L https://github.com/greenbone/openvas-scanner/archive/refs/tags/v$OPENVAS_SCANNER_VERSION.tar.gz -o $SOURCE_DIR/openvas-scanner-$OPENVAS_SCANNER_VERSION.tar.gz
sudo curl -f -L https://github.com/greenbone/openvas-scanner/releases/download/v$OPENVAS_SCANNER_VERSION/openvas-scanner-$OPENVAS_SCANNER_VERSION.tar.gz.asc -o $SOURCE_DIR/openvas-scanner-$OPENVAS_SCANNER_VERSION.tar.gz.asc
sudo tar -C $SOURCE_DIR -xvzf $SOURCE_DIR/openvas-scanner-$OPENVAS_SCANNER_VERSION.tar.gz
sudo mkdir -p $BUILD_DIR/openvas-scanner
cd $BUILD_DIR/openvas-scanner
sudo cmake $SOURCE_DIR/openvas-scanner-$OPENVAS_SCANNER_VERSION -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX -DCMAKE_BUILD_TYPE=Release -DSYSCONFDIR=/etc -DLOCALSTATEDIR=/var -DOPENVAS_FEED_LOCK_PATH=/var/lib/openvas/feed-update.lock -DOPENVAS_RUN_DIR=/run/ospd
sudo make -j$(nproc)
sudo make DESTDIR=$INSTALL_DIR install
sudo cp -rv $INSTALL_DIR/* /
# ospd-openvas
export OSPD_OPENVAS_VERSION=22.4.2
sudo apt install -y python3 python3-pip python3-setuptools python3-packaging python3-wrapt python3-cffi python3-psutil python3-lxml python3-defusedxml python3-paramiko python3-redis python3-paho-mqtt
sudo curl -f -L https://github.com/greenbone/ospd-openvas/archive/refs/tags/v$OSPD_OPENVAS_VERSION.tar.gz -o $SOURCE_DIR/ospd-openvas-$OSPD_OPENVAS_VERSION.tar.gz
sudo curl -f -L https://github.com/greenbone/ospd-openvas/releases/download/v$OSPD_OPENVAS_VERSION/ospd-openvas-$OSPD_OPENVAS_VERSION.tar.gz.asc -o $SOURCE_DIR/ospd-openvas-$OSPD_OPENVAS_VERSION.tar.gz.asc
gpg --verify $SOURCE_DIR/ospd-openvas-$OSPD_OPENVAS_VERSION.tar.gz.asc $SOURCE_DIR/ospd-openvas-$OSPD_OPENVAS_VERSION.tar.gz
sudo tar -C $SOURCE_DIR -xvzf $SOURCE_DIR/ospd-openvas-$OSPD_OPENVAS_VERSION.tar.gz
cd $SOURCE_DIR/ospd-openvas-$OSPD_OPENVAS_VERSION
sudo python3 -m pip install . --prefix=$INSTALL_PREFIX --root=$INSTALL_DIR --no-warn-script-location
sudo cp -rv $INSTALL_DIR/* /
# notus-scanner
export NOTUS_VERSION=22.4.1
sudo apt install -y python3-paho-mqtt python3-psutil python3-gnupg
sudo curl -f -L https://github.com/greenbone/notus-scanner/archive/refs/tags/v$NOTUS_VERSION.tar.gz -o $SOURCE_DIR/notus-scanner-$NOTUS_VERSION.tar.gz
sudo curl -f -L https://github.com/greenbone/notus-scanner/releases/download/v$NOTUS_VERSION/notus-scanner-$NOTUS_VERSION.tar.gz.asc -o $SOURCE_DIR/notus-scanner-$NOTUS_VERSION.tar.gz.asc
gpg --verify $SOURCE_DIR/notus-scanner-$NOTUS_VERSION.tar.gz.asc $SOURCE_DIR/notus-scanner-$NOTUS_VERSION.tar.gz
sudo tar -C $SOURCE_DIR -xvzf $SOURCE_DIR/notus-scanner-$NOTUS_VERSION.tar.gz
cd $SOURCE_DIR/notus-scanner-$NOTUS_VERSION
printf "\n\n  -> Pausing..."
read answer
sleep 10782
python3 -m pip install . --prefix=$INSTALL_PREFIX --root=$INSTALL_DIR --no-warn-script-location --ignore-installed # with sudo?
sudo cp -rv $INSTALL_DIR/* /
# gvm-tools
python3 -m pip install --user gvm-tools
python3 -m pip install --prefix=$INSTALL_PREFIX --root=$INSTALL_DIR --no-warn-script-location gvm-tools
sudo cp -rv $INSTALL_DIR/* /
# redis
sudo apt install -y redis-server
sudo cp $SOURCE_DIR/openvas-scanner-$GVM_VERSION/config/redis-openvas.conf /etc/redis/
sudo chown redis:redis /etc/redis/redis-openvas.conf
sudo echo "db_address = /run/redis-openvas/redis.sock" | sudo tee -a /etc/openvas/openvas.conf
sudo systemctl start redis-server@openvas.service
sudo systemctl enable redis-server@openvas.service
sudo usermod -aG redis gvm
# mosquitto
sudo apt install -y mosquitto
sudo systemctl start mosquitto.service
sudo systemctl enable mosquitto.service
sudo echo "mqtt_server_uri = localhost:1883" | sudo tee -a /etc/openvas/openvas.conf
sudo mkdir -p /var/lib/notus
sudo mkdir -p /run/gvmd
sudo chown -R gvm:gvm /var/lib/gvm
sudo chown -R gvm:gvm /var/lib/openvas
sudo chown -R gvm:gvm /var/lib/notus
sudo chown -R gvm:gvm /var/log/gvm
sudo chown -R gvm:gvm /run/gvmd
sudo chmod -R g+srw /var/lib/gvm
sudo chmod -R g+srw /var/lib/openvas
sudo chmod -R g+srw /var/log/gvm
sudo chown gvm:gvm /usr/local/sbin/gvmd
sudo chmod 6750 /usr/local/sbin/gvmd
sudo chown gvm:gvm /usr/local/bin/greenbone-nvt-sync
sudo chmod 740 /usr/local/sbin/greenbone-feed-sync
sudo chown gvm:gvm /usr/local/sbin/greenbone-*-sync
sudo chmod 740 /usr/local/sbin/greenbone-*-sync
GNUPGHOME=/tmp/openvas-gnupg
#sudo? mkdir -p $GNUPGHOME
gpg --import /tmp/GBCommunitySigningKey.asc
gpg --import-ownertrust < /tmp/ownertrust.txt
export OPENVAS_GNUPG_HOME=/etc/openvas/gnupg
# ERROR - cp: cannot stat '/tmp/openvas-gnupg/*': No such file or directory
sudo mkdir -p $OPENVAS_GNUPG_HOME
sudo cp -r /tmp/openvas-gnupg/* $OPENVAS_GNUPG_HOME/
sudo chown -R gvm:gvm $OPENVAS_GNUPG_HOME
/tmp/KASM/KASM/scripts/./scanning/sh

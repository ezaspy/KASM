#!/bin/bash
# thehive.service
echo '[Unit]
Description=TheHive
Documentation=https://thehive-project.org
Wants=network-online.target
After=network-online.target

[Service]
WorkingDirectory=/opt/thehive

User=thehive
Group=thehive

ExecStart=/opt/thehive/bin/thehive \
	-Dconfig.file=/etc/thehive/application.conf \
	-Dlogger.file=/etc/thehive/logback.xml \
	-Dpidfile.path=/dev/null

StandardOutput=null
StandardError=null

# Specifies the maximum file descriptor number that can be opened by this process
LimitNOFILE=65536

# Disable timeout logic and wait until process is stopped
TimeoutStopSec=0

# SIGTERM signal is used to stop the Java process
KillSignal=SIGTERM

# Java process is never killed
SendSIGKILL=no

# When a JVM receives a SIGTERM signal it exits with code 143
SuccessExitStatus=143

[Install]
WantedBy=multi-user.target
' > thehive.service
sudo mv thehive.service /etc/systemd/system/thehive.service

#!/bin/bash

# Install autoupdate.service
cp ./autoupdate.service /etc/systemd/system/autoupdate.service
# Install adblock.service
cp ./adblock.service /etc/systemd/system/adblock.service
# Install autoupdate.timer
cp ./autoupdate.timer /etc/systemd/system/autoupdate.timer

# Install scripts
cp ./autoupdate.sh /usr/bin/autoupdate
cp ./adblock.sh /usr/bin/adblock

# Reload systemd daemon to recognize the new service and timer
systemctl daemon-reload

# Enable and start the timer
systemctl enable update-upgrade.timer
systemctl start update-upgrade.timer

echo "Auto updates & adblock installed succesfully"
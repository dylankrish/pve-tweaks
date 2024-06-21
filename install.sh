#!/bin/bash

# Install autoupdate.service
install -m 644 autoupdate.service /etc/systemd/system/autoupdate.service
install -m 644 adblock.service /etc/systemd/system/adblock.service
install -m 644 autoupdate.timer /etc/systemd/system/autoupdate.timer

# Install scripts
install -m 744 autoupdate.sh /usr/bin/autoupdate
install -m 744 adblock.sh /usr/bin/adblock

# Reload systemd daemon to recognize the new service and timer
systemctl daemon-reload

# Enable and start the timer
systemctl enable autoupdate.timer
systemctl start autoupdate.timer

echo "Auto updates & adblock installed succesfully"
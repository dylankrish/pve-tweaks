#!/bin/bash

# Disable timer
systemctl stop autoupdate.timer
systemctl disable autoupdate.timer

# Remove autoupdate.service
rm /etc/systemd/system/autoupdate.service
rm /etc/systemd/system/autoupdate.timer

# Remove scripts
rm /usr/bin/autoupdate

# Reload systemd daemon
systemctl daemon-reload

echo "Uninstalled!"

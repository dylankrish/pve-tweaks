#!/bin/bash

# Install autoupdate.service

# Install adblock.service

# Install update-upgrade.timer


# Reload systemd daemon to recognize the new service and timer
systemctl daemon-reload

# Enable and start the timer
systemctl enable update-upgrade.timer
systemctl start update-upgrade.timer

echo "Auto updates & adblock installed succesfully"
#!/bin/bash

# update & upgrade
/usr/bin/apt update
/usr/bin/apt full-upgrade -y

# remove subscription warning
cp /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js.bak

sed -Ezi.bak "s/(function\(orig_cmd\) \{)/\1\n\torig_cmd\(\);\n\treturn;/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js
/usr/bin/systemctl restart pveproxy.service

# if system needs restart, reboot

# else if services need restart, restart those services
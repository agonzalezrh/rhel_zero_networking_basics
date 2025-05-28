#!/bin/bash
echo "[WebService]" > /etc/cockpit/cockpit.conf
echo "https://cockpit-$(hostname -f|cut -d"-" -f2).apps.$(grep search /etc/resolv.conf| grep -o '[^ ]*$')" >> /etc/cockpit/cockpit.conf
echo "AllowUnencrypted = true" >> /etc/cockpit/cockpit.conf
systemctl enable --now cockpit.socket

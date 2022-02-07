#!/bin/bash
echo '################## update and upgrade #################'
apt update
apt upgrade 
echo '################## install software and depend #########'
apt install freerdp2-x11 libavcodec-dev libasound2-dev libpulse-dev libxv-dev git xdotool -y
echo '################## some ubuntu magic ####################'
gsettings set org.gnome.desktop.background picture-uri ""
gsettings set org.gnome.desktop.background primary-color '#000000'
xset s noblank
xset s off
xset -dpms
usermod -aG sudo vdi
usermod -aG plugdev vdi
echo 'SUBSYSTEM=="usb", MODE="0660", GROUP="plugdev"' > /etc/udev/rules.d/00-usb-permissions.rules
udevadm control --reload-rules

#!/bin/bash
echo '################## update and upgrade #################'
apt update
apt upgrade 
echo '################## install software and depend #########'
apt install freerdp2-x11 libavcodec-dev libasound2-dev libpulse-dev libxv-dev git xdotool -y
echo '################## some ubuntu magic ####################'

echo '################## black desktop wallpaper  ####################'

gsettings set org.gnome.desktop.background picture-uri ""
gsettings set org.gnome.desktop.background primary-color '#000000'

echo '################## disable power sospension and blaking screen  ####################'

xset s noblank
xset s off
xset -dpms
gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false
gsettings set org.gnome.settings-daemon.plugins.power idle-dim false
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend'

echo '################## permissions to sys user vdi ####################'

usermod -aG sudo vdi
usermod -aG plugdev vdi
echo 'SUBSYSTEM=="usb", MODE="0660", GROUP="plugdev"' > /etc/udev/rules.d/00-usb-permissions.rules
udevadm control --reload-rules

mkdir /etc/ielskiosk
mv ./kiosk.sh /etc/ielskiosk/kiosk.sh
mv ./kiosk.service /lib/systemd/system/kiosk.service
sudo systemctl enable kiosk.service
sudo systemctl start kiosk.service

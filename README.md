# ielskiosk
IELS kiosk software
1) Install a clean ubuntu desktop istance
2) create a user called vdi who does autologin
3) update by    sudo apt update & sudo apt upgrade
4) apt install freerdp2-x11 libavcodec-dev libasound2-dev libpulse-dev libxv-dev git xdotool openssh-server gnome-shell-extension-autohidetopbar -y

SOME DESKTOP CHANGES and improvements

5) xset s noblank
6) xset s off
7) xset -dpms
8) gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false
9) gsettings set org.gnome.settings-daemon.plugins.power idle-dim false
10) gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
11) gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend'
12) gsettings set org.gnome.desktop.background picture-uri ""
13) gsettings set org.gnome.desktop.background primary-color '#000000'
14) sudo apt purge apport
15) systemctl stop cups-browsed
16) systemctl disable cups-browsed


LOGIN WITH ROOT and allow user vdi to namae usb device permissions 

usermod -aG sudo vdi
usermod -aG plugdev vdi
echo 'SUBSYSTEM=="usb", MODE="0660", GROUP="plugdev"' > /etc/udev/rules.d/00-usb-permissions.rules
udevadm control --reload-rules

HIDE THE TOPBAR https://ubuntuhandbook.org/index.php/2020/08/top-panel-auto-hide-ubuntu-20-04/

remove all flags from the menu 

change firewall status for ssh 

sudo ufw allow ssh
sudo ufw enable


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
14) gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
15) gsettings set org.gnome.shell.extensions.desktop-icons show-home false
16) sudo apt purge apport
17) systemctl stop cups-browsed
18) systemctl disable cups-browsed


LOGIN WITH ROOT and allow user vdi to namae usb device permissions 

19) usermod -aG sudo vdi
20) usermod -aG plugdev vdi
21) echo 'SUBSYSTEM=="usb", MODE="0660", GROUP="plugdev"' > /etc/udev/rules.d/00-usb-permissions.rules
udevadm control --reload-rules

HIDE THE TOPBAR https://ubuntuhandbook.org/index.php/2020/08/top-panel-auto-hide-ubuntu-20-04/

22)remove all flags from the menu 

23)change firewall status for ssh 

24) sudo ufw allow ssh
25) sudo ufw enable
26) sudo mkdir /etc/ielskiosk
27) sudo mv ./kiosk.sh /etc/ielskiosk/kiosk.sh
28) sudo mv ./kiosk.service /lib/systemd/system/kiosk.service
29) sudo systemctl enable kiosk.service
30) sudo systemctl start kiosk.service
31) /etc/default/grub.     GRUB_CMDLINE_LINUX_DEFAULT="".  sudo update-grub2
32) gsettings set org.gnome.settings-daemon.plugins.power button-power 'shutdown'
33) gnome-extensions disable ubuntu-dock@ubuntu.com
34) https://www.q4os.org/forum/viewtopic.php?id=3267
35) https://www.makeuseof.com/tag/customize-boot-splash-screen-logo-linux/
36) https://serverfault.com/questions/422770/changing-the-login-timeout-for-windows-remote-desktop-services
37) sudo bash -c 'echo "Hidden=true" >> /etc/xdg/autostart/update-notifier.desktop'
38) https://www.youtube.com/watch?v=TuDrmq4RQzU

~~~~~~~~~~~~~~~
Version Rasp Zero
~~~~~~~~~~~~~~~~~

https://www.apalrd.net/posts/2022/raspi_spice/

sudo apt install xserver-xorg x11-xserver-utils xinit openbox

sudo nano /etc/xdg/openbox/autostart

sudo systemctl edit getty@tty1.service

[Service]


ExecStart=


ExecStart=-/sbin/agetty --noissue --autologin myusername %I $TERM


Type=idle



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

https://forum.slitaz.org/topic/disable-openbox-menu

~@@@~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# ielskiosk
IELS kiosk software
1) Install a clean ubuntu desktop istance
2) create a user called vdi who does autologin
3) update by    sudo apt update & sudo apt upgrade
4) apt install freerdp2-x11 libavcodec-dev libasound2-dev libpulse-dev libxv-dev git xdotool gnome-shell-extension-autohidetopbar -y

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



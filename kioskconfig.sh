#!/bin/bash
sudo systemctl stop kiosk.service
read -p "Enter remote system name: " remote
echo "Remote server saved!"
#sudo systemctl enable kiosk.service
sudo systemctl start kiosk.service

##!/bin/bash

while true
do xfreerdp /v:$remote /u:$user -f /cert-ignore /sec:tls /vc:rdpsnd,sys:alsa  +gfx-thin-client /usb:dev:046d:0825
sleep 1
done

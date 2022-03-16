##!/bin/bash

server=
serverbkp=
sleep 10
while true
do
echo connecting to VDI
  xfreerdp /v:$server /u:$user -f /cert-ignore /sec:tls /vc:rdpsnd,sys:alsa  +gfx-thin-client /rfx /rfx-mode:video /rfx-mode:audio /gfx:RFX +glyph-cache -toggle-fullscreen /multimon:force
echo connecting to VDI
  xfreerdp /v:$serverbkp /u:$user -f /cert-ignore /sec:tls /vc:rdpsnd,sys:alsa  +gfx-thin-client /rfx /rfx-mode:video /rfx-mode:audio /gfx:RFX +glyph-cache -toggle-fullscreen /multimon:force
sleep 1
done

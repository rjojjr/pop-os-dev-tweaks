#!/bin/bash

# Install official Zoom app from Zoom server because snap store
# and Pop Shop versions are broken.

echo '*************************************************'
echo 'Zoom Client App Installer'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'

echo 'Installing official Zoom client...'
cd /tmp || (mkdir /tmp && cd /tmp)
wget https://cdn.zoom.us/prod/6.0.12.5501/zoom_amd64.deb
sudo dpkg -i zoom_amd64.deb
echo 'Cleaning up ...'
rm zoom_amd64.deb
echo 'Refreshing installed apps...'
xdg-desktop-menu forceupdate
echo 'Installed official Zoom client'
echo '*************************************************'
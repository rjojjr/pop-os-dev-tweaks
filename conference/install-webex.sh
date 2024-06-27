#!/bin/bash

# Install latest official WebEx app from Cisco file server

echo '*************************************************'
echo 'Cisco WebEx App Installer'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'

echo 'Installing missing WebEx dependencies'
sudo add-apt-repository main
sudo apt update
sudo apt install libgl1-mesa-glx -y

echo 'Installing official WebEx client...'
cd /tmp || (mkdir /tmp && cd /tmp)
wget https://binaries.webex.com/WebexDesktop-Ubuntu-Official-Package/Webex.deb
sudo dpkg -i Webex.deb
if [ $? -ne 0 ]; then
    sudo apt-get -f install -y
    sudo dpkg -i Webex.deb
fi
echo 'Cleaning up ...'
rm Webex.deb
echo 'Refreshing installed apps...'
xdg-desktop-menu forceupdate
echo 'Installed official WebEx client'
echo '*************************************************'

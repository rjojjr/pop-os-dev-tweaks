#!/bin/bash

# This script is meant to enable OpenConnect
# as a VPN option in Gnome Network Manager

echo '*************************************************'
echo 'Gnome Network Manager OpenConnect VPN Support Installer'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'

echo 'Installing OpenConnect support modules to Gnome Network Manager...'

echo 'deb http://download.opensuse.org/repositories/home:/bluca:/openconnect:/release/Ubuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:bluca:openconnect:release.list
curl -fsSL https://download.opensuse.org/repositories/home:bluca:openconnect:release/Ubuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_bluca_openconnect_release.gpg > /dev/null
sudo apt update
sudo apt install openconnect network-manager-openconnect network-manager-openconnect-gnome


echo 'Installed OpenConnect support modules to Gnome Network Manager'
echo '*************************************************'
echo '*** NOTE - You may need to logout/restart in order for the changes to take effect ***'
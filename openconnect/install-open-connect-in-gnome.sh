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

cd /tmp || (mkdir /tmp && cd /tmp)
sudo apt update
sudo apt install openconnect -y

# These versions of the openconnect Network Manager plugin
# include a userAgent field that can be used to mitigate 404 errors from Cisco Anyconnect
# VPN servers.

sudo apt install network-manager-openconnect=1.2.6-4 -y
sudo apt install network-manager-openconnect-gnome -y


echo 'Installed OpenConnect support modules to Gnome Network Manager'
echo '*************************************************'
echo '*** NOTE - You may need to logout/restart in order for the changes to take effect ***'
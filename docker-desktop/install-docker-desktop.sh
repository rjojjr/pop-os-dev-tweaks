#!/bin/bash

# Install official Docker Desktop app for Debian

echo '*************************************************'
echo 'Docker Desktop App Installer'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'

echo 'Installing official Docker Desktop client...'
cd /tmp || (mkdir /tmp && cd /tmp)

# TODO - Get latest client
wget https://desktop.docker.com/linux/main/amd64/149282/docker-desktop-4.30.0-amd64.deb
sudo dpkg -i docker-desktop-4.30.0-amd64.deb
echo 'Cleaning up ...'
rm docker-desktop-4.30.0-amd64.deb
echo 'Refreshing installed apps...'
xdg-desktop-menu forceupdate
echo 'Installed official Docker Desktop client'
echo '*************************************************'
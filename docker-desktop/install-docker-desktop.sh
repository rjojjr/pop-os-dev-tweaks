#!/bin/bash

# Install official Docker Desktop app for Debian

echo '*************************************************'
echo 'Docker Desktop App Installer'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'

echo 'Installing Docker Engine'
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

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
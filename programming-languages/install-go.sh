#!/bin/bash


echo '*************************************************'
echo 'Golang Installer'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'

echo 'Installing go SDK...'
cd /tmp || (mkdir /tmp && cd /tmp)

# TODO - Get latest client
wget https://dl.google.com/go/go1.22.4.linux-amd64.tar.gz
echo 'Removing any previous existing go SDKs'
rm -rf /usr/local/go
echo 'Unpacking SDK...'
sudo tar -C /usr/local -xzf go1.22.4.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> "$HOME/.profile"
echo 'Cleaning up...'
rm go1.22.4.linux-amd64.tar.gz
echo 'Installed go SDK'
echo '*************************************************'
echo '*** NOTE - You may need to logout/restart in order for the changes to take effect ***'


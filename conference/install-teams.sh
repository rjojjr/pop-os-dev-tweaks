#!/bin/bash

# Install latest teams-for-linux app from snap
# Teams client from Pop Shop seems to be broken(or buggy at best)

echo '*************************************************'
echo 'Teams Linux Client App Installer'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'

echo 'Installing Teams Linux client...'
sudo snap install teams-for-linux
echo 'Refreshing installed apps...'
xdg-desktop-menu forceupdate
echo 'Installed Teams Linux client'
echo '*************************************************'
#!/bin/bash

echo '*************************************************'
echo 'Pop OS Conference Software Installer'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'

echo 'Installing Teams, WebEx and Zoom...'
bash ../package-managers/install-snap.sh
bash ./install-teams.sh
bash ./install-webex.sh
bash ./install-zoom.sh

echo 'Refreshing installed apps...'
xdg-desktop-menu forceupdate

echo 'Installed Teams, WebEx and Zoom'
echo '*************************************************'
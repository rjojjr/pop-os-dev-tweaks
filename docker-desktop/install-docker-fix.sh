#!/bin/bash

# Use this script to install docker desktop config mitigation
# script as a startup app.

echo '*************************************************'
echo 'Docker Desktop Config Corruption Mitigation Installer'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'

echo 'Installing Docker Desktop Config Mitigation...'

cp ./handle-docker-config-corruption.sh /bin/handle-docker-config-corruption.sh
sudo chmod +x /bin/handle-docker-config-corrupecho '*************************************************'tion.sh

echo 'Adding autostart entry...'
cat > ~/.config/autostart/docker-desktop-config-fix.desktop  <<- EOM
[Desktop Entry]
Type=Application
Exec=/bin/handle-docker-config-corruption.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Docker Desktop Config Corruption Fix
Name=Docker Desktop Config Corruption Fix
EOM

echo 'Installed Docker Desktop Config Corruption Mitigation'
echo '*************************************************'
echo '*** NOTE - You may need to logout/restart in order for the changes to take effect ***'

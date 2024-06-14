#!/bin/bash

# Use this script to install docker desktop config mitigation
# script as a startup app.

echo 'Installing Docker Desktop Config Mitigation...'

cp ./handle-docker-config-corruption.sh /bin/handle-docker-config-corruption.sh
sudo chmod +x /bin/handle-docker-config-corruption.sh
cat > ~/.config/autostart/docker-desktop-config-fix.desktop  <<- EOM
[Desktop Entry]
Type=Application
Exec=/bin/handle-docker-config-corruption.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Docker Desktop Config Fix
Name=Docker Desktop Config Fix
EOM

echo 'Installed Docker Desktop Config Mitigation'

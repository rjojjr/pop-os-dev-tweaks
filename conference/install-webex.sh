#!/bin/bash

# Install latest official WebEx app

echo 'Installing official WebEx client...'
cd /tmp || (mkdir /tmp && cd /tmp)
wget https://binaries.webex.com/WebexDesktop-Ubuntu-Official-Package/Webex.deb
dpkg -i Webex.deb
echo 'Cleaning up ...'
rm Webex.deb
echo 'Installed official WebEx client'
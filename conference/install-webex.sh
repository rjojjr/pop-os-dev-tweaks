#!/bin/bash

# Install latest official WebEx app

cd /tmp || (mkdir /tmp && cd /tmp)
wget https://binaries.webex.com/WebexDesktop-Ubuntu-Official-Package/Webex.deb
dpkg -i Webex.deb
rm Webex.deb

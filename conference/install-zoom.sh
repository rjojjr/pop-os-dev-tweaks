#!/bin/bash

# Install official Zoom app from Zoom server because snap store
# and Pop Shop versions are broken.

echo 'Installing official Zoom client...'
cd /tmp || (mkdir /tmp && cd /tmp)
wget https://cdn.zoom.us/prod/6.0.12.5501/zoom_amd64.deb
dpkg -i zoom_amd64.deb
echo 'Cleaning up ...'
rm zoom_amd64.deb
echo 'Installed official Zoom client'
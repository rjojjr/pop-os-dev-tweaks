#!/bin/bash

# This script is meant to add openconnect
# as a VPN option in Gnome Network Manager

cd /tmp
apt install openconnect
wget http://ftp.us.debian.org/debian/pool/main/n/network-manager-openconnect/network-manager-openconnect_1.2.10-1_amd64.deb
dpkg -i network-manager-openconnect_1.2.10-1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/n/network-manager-openconnect/network-manager-openconnect-gnome_1.2.10-1_amd64.deb
dpkg -i dpkg -i network-manager-openconnect-gnome_1.2.10-1_amd64.deb

rm network-manager-openconnect_1.2.10-1_amd64.deb
rm network-manager-openconnect-gnome_1.2.10-1_amd64.deb
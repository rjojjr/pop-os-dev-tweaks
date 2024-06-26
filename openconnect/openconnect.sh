#!/bin/bash
# This script is meant to initiate the openconnect client
# via terminal in case the gnome network manager won't work for you.

# Best Use Case
# Set the appropriate env. var.s and move the script to `/bin` with what ever name
# you would like the utility to be called(without the `.sh`) and `sudo chmod +x {filename}` it.
# This way it can be opened from anywhere by just calling the file name.
echo "$VPN_PW" | sudo openconnect "$VPN_URL" --useragent AnyConnect --user="$VPN_USER" --passwd-on-stdin
#!/bin/bash

# Install Rust

echo '*************************************************'
echo 'Rust Installer'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'

echo 'Installing Rust...'
curl https://sh.rustup.rs -sSf | sh
echo 'Installed Rust'
echo '*************************************************'
echo '*** NOTE - You may need to logout/restart in order for the changes to take effect ***'
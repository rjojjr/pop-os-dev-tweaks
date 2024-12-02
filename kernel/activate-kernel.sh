#!/bin/bash

VERSION="$1"

echo '*************************************************'
echo 'Kernel Activator'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'

echo ''
echo "Activating kernel $VERSION"

sudo kernelstub -v -k "/boot/vmlinuz-$VERSION" -i "/boot/initrd.img-$VERSION"

echo "Activated kernel $VERSION, you should reboot now"

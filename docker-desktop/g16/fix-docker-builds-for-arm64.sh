#!/bin/bash

# This script handles errors various produced when using docker buildx to
# build arm64 images on the Dell g16 7630.

echo '*************************************************'
echo 'Dell G16 7630 Docker ARM64 Build Fix'
echo '*************************************************'
echo 'Created by [Robert Kirchner JR(rjojjr)](https://github.com/rjojjr)'
echo ''
echo 'Please give [this repo](https://github.com/rjojjr/pop-os-dev-tweaks) a star if you find it useful'
echo '*************************************************'
echo ''
echo 'This script fixes errors(Segmentation Fault, etc) that can occur on the Dell G16 7630 when using docker buildx to build images that target ARM64'
echo ''
echo '*************************************************'

echo 'Updating packages and installing dependencies'

cd ~/bin || (mkdir ~/bin && cd ~/bin || exit 1)
sudo apt update && apt upgrade -y
sudo apt install make -y
sudo apt install ninja-build -y
sudo apt-get install libpixman-1-dev
wget https://download.qemu.org/qemu-7.0.0.tar.xz
tar xvJf qemu-7.0.0.tar.xz
cd qemu-7.0.0/
echo 'Building QEMU 7.0.0 package'
echo 'This might take a while'
./configure
make
make install
cd ..

echo 'Configuring docker'
docker run --privileged --rm tonistiigi/binfmt --install all

echo "export DOCKER_CLI_EXPERIMENTAL=enabled" >> "$HOME/.bashrc"
source "$HOME/.bashrc"
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes -c yes

echo 'Cleaning up'
rm qemu-7.0.0.tar.xz

echo ''
echo '!!! WARNING - Add $HOME/bin to your path if you have not done so already !!!'
echo ''

echo 'Executed Dell G16 Docker ARM64 Build Fix'
echo '*************************************************'
echo '*** NOTE - You may need to logout/restart in order for the changes to take effect ***'

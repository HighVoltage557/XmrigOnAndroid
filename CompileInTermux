#!/bin/sh
apt update -y
apt upgrade -y
apt install git proot cmake figlet -y
figlet -f small Cloning repository
git clone https://github.com/xmrig/xmrig
mkdir xmrig/build
cd xmrig/build
figlet -f small Compiling xmrig
cmake -DWITH_HWLOC=OFF ..
make -j$(nproc)
figlet -f small Done compiling
sudo apt remove figlet -y
echo Removed extra packages

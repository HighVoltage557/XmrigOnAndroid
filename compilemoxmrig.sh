#!/bin/sh
apt update -y
apt upgrade -y
apt install git proot cmake figlet -y
figlet -f small Cloning repository
git clone https://github.com/moneroocean/xmrig
mkdir xmrig/build
cd xmrig/build
figlet -f small Compiling MO Xxmrig
cmake -DWITH_HWLOC=OFF ..
make -j$(nproc)
figlet -f small Done compiling
apt remove figlet -y
echo Removed extra packages

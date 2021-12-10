#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev figlet -y
figlet -f small Cloning repository
git clone https://github.com/xmrig/xmrig
mkdir xmrig/build
cd xmrig/build
figlet -f small Compiling xmrig
cmake ..
make -j$(nproc)
figlet -f small Done compiling
sudo apt remove figlet -y
echo Removed extra packages.

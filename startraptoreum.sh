#!/bin/bash
echo "Xmrig setup V 1.0"
WALLET=$0
POOL=$1
ALGO+$2

sudo apt update -y && sudo apt upgrade -y && sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y && git clone https://github.com/xmrig/xmrig && mkdir xmrig/build && cd xmrig/build && cmake .. && make -j$(nproc) && cd && cd xmrig/build && ./xmrig -a "ALGO" -o "POOL" -u "WALLET"

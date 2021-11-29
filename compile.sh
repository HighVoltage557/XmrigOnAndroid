#!/bin/bash
sudo apt update -y && sudo apt upgrade -y && sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y && git clone https://github.com/xmrig/xmrig && mkdir xmrig/build && cd xmrig/build && cmake .. && make -j$(nproc)

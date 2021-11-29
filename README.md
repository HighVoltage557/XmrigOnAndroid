# XmrigOnAndroid
Small setup script and instructions for building xmrig on Ubuntu on android with GCC. Setup instructions as follows:
p
1) Install Ubuntu on your android device using an app UserLAnd: https://github.com/CypherpunkArmory/UserLAnd
<br>
1.1) Open the app, agree/disagree with data collection, give permisson to write data
<br>
1.2) Click on Ubuntu, follow on screen instructions and enter username and password
<br>
1.3) It will install Ubuntu and start a terminal session. Enter password to login
<br>
<br>
2) Download the script to compile xmrig and run it:
```sudo apt update -y && sudo apt install wget -y wget https://raw.githubusercontent.com/HighVoltage557/XmrigOnAndroid/main/compile.sh && chmod +x compile.sh && compile.sh```
<br>
This script will compile xmrig and will place the built xmrig executable in the directory `xmrig/build`
<br>
<br>
3) To run the miner:
```cd && cd xmrig/build && sudo ./xmrig -a Algo_Name -o pool:port -u Wallet_Address -p Password```
<br>
3.1) If you want to use the config, which has many additional features, follow these instructions:
<br>
Go to https://xmrig.com/wizard generate the config and paste the config in a file named `config.json` in `xmrig/build`
<br>
Then to run it:
```cd && cd xmrig/build && sudo ./xmrig```

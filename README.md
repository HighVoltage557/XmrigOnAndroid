# XmrigOnAndroid
## Small setup script and instructions for building xmrig on Ubuntu on android with GCC. Setup instructions as follows:

### 1. Install Ubuntu on your android device using an app UserLAnd: `https://github.com/CypherpunkArmory/UserLAnd`

**1.1) Open the app, agree/disagree with data collection, give permisson to write data**

**1.2) Click on Ubuntu, follow on screen instructions and enter username and password**

**1.3) It will install Ubuntu and start a terminal session. Enter password to login**

### 2) Download the script to compile xmrig and run it:
```sudo apt update -y && sudo apt install wget -y wget https://raw.githubusercontent.com/HighVoltage557/XmrigOnAndroid/main/compile.sh && chmod +x compile.sh && compile.sh```

**This script will compile xmrig and will place the built xmrig executable in the directory `xmrig/build`**

### 3) To run the miner:

```cd && cd xmrig/build && sudo ./xmrig -a Algo_Name -o pool:port -u Wallet_Address -p Password```

**3.1) If you want to use the config, which has many additional features, Go to https://xmrig.com/wizard generate the config and paste the config in a file named `config.json` in `xmrig/build`**

Then to run the miner if you're using the `config`:
```cd && cd xmrig/build && sudo ./xmrig```

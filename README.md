# XmrigOnAndroid

**You have 2 options to compile xmrig on android, one is to compile directly in termux with clang without hwloc and the second is to install a linux distribution running on andoid and compile with GCC and hwloc.**

**In my testing with both ways work well on all algorithms except ghostrider. Building in termux without hwloc results in a large number of rejected shares on ghostrider (66% rejects on ghostrider in my tests without hwloc)**

**Unless you want to mine with ghostrider algorithm, use termux as it is easier.**

**You can algo compile moneroocean's fork of xmrig, see (3)**

<br />

## (1) Compiling xmrig with Clang in termux:

### 1. Install termux on your device:
Link to termux repository: https://github.com/termux/termux-app/
You can get the apk from releases and install it.

### 2. Download the script to compile xmrig and run it:
```apt install wget -y && wget https://raw.githubusercontent.com/HighVoltage557/XmrigOnAndroid/main/compileintermux.sh && chmod +x compileintermux.sh && ./compileintermux.sh```

This script will compile xmrig and will place the built xmrig executable in the directory `xmrig/build`

### 3. To run xmrig:

```cd && cd xmrig/build && ./xmrig -a Algorithm_Name -o pool:port -u Wallet_Address -p Password```

3.1) If you want to use the config, which has many additional features, Go to https://xmrig.com/wizard generate the config and paste the config in a file named `config.json` in `xmrig/build`

3.1.2) Then to run xmrig if you're using the config:
```cd && cd xmrig/build && ./xmrig```

<br />

## (2) Setup script and instructions for building xmrig on Ubuntu on android with GCC. Setup instructions as follows:

### 1. Install Ubuntu on your android device using an app UserLAnd:

Link to UserLand repository: https://github.com/CypherpunkArmory/UserLAnd

1.1) Open the app, agree/disagree with data collection, give permisson to write data

1.2) Click on Ubuntu, follow on screen instructions and enter username and password

1.3) It will install Ubuntu and start a terminal session. Enter password to login

### 2. Download the script to compile xmrig and run it:
```sudo apt update -y && sudo apt install wget -y && wget https://raw.githubusercontent.com/HighVoltage557/XmrigOnAndroid/main/compile.sh && chmod +x compile.sh && ./compile.sh```

This script will compile xmrig and will place the built xmrig executable in the directory `xmrig/build`

### 3. To run the xmrig:

```cd && cd xmrig/build && sudo ./xmrig -a Algorithm_Name -o pool:port -u Wallet_Address -p Password```

3.1) If you want to use the config (reccomended), which has many additional features, Go to https://xmrig.com/wizard generate the config and paste the config in a file named `config.json` in `xmrig/build`

3.1.2) Then to run xmrig if you're using the config:
```cd && cd xmrig/build && sudo ./xmrig```

<br />

## (3) Compiling Moneroocean's fork xmrig in termux:
A brief description of moneroocean: 
Moneroocean is a monero mining pool where you can mine altcoins and get paid in XMR. Their fork of xmrig runs a benchmark, stores the hashrate of many coins which are in xmrig and mines whichever is the most profitable.
When the pool finds a block, it is exchanged to XMR and you get paid for your raw hashrate converted to equivalent XMR hashrate.
Github Repository: https://github.com/moneroocean/xmrig

### 1. Install termux on your device from fdroid
Link to termux repository: https://github.com/termux/termux-app/
You can get the apk from releases and install it.

### 2. Download the script to compile xmrig and run it:
```apt install wget -y && wget https://raw.githubusercontent.com/HighVoltage557/XmrigOnAndroid/main/compilemoxmrig.sh && chmod +x compilemoxmrig.sh && ./compilemoxmrig.sh```

This script will compile xmrig and will place the built xmrig executable in the directory `xmrig/build`

### 3. To run MO xmrig:

3.1) Go to https://xmrig.com/wizard generate the config and paste the config in a file named `config.json` in `xmrig/build`
(You need to do this only once after compiling, preferably use TLS)

The config.json is needed for storing the algorithm's hashrate after the benchmark. If you don't use the config, it will benchmark each time it runs which can take a couple of minutes to finish and the config has more features than using CLI arguments directly.

3.2) Then to run xmrig:
```cd && cd xmrig/build && ./xmrig```

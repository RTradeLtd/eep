#! /bin/bash

# Used the first time we boot our I2P node

# Variable Setup

DISTRO=$(lsb_release -sc)

# Run Commands

echo "[INFO] Updating System"
sudo apt update -y
echo "[INFO] Upgrading System"
sudo apt upgrade -y

if [[ "$DISTRO" == "bionic" ]]; then
    echo "[INFO] Bionic Beaver Detected"
    echo "[INFO] Installing I2P"
    sudo apt install i2p -y
else
    echo "[ERROR] Unsupported distribution detected"
    exit 1
fi

echo "[INFO] Installation finished"
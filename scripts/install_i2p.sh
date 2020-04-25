#! /bin/bash

sudo apt-add-repository ppa:i2p-maintainers/i2p
sudo apt-get update
sudo apt-get install i2p
# use this to setup the i2p service to start at boot
sudo dpkg-reconfigure i2p

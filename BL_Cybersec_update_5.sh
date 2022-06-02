#!/bin/bash

sudo apt install xscreensaver-data-extra
sudo apt install xscreensaver-gl
sudo apt install xscreensaver-gl-extra

sudo pip install --upgrade pip
sudo pip install paho-mqtt
sudo pip install mysql-connector-python
sudo pip install requests
sudo pip install pyserial

bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)
sudo systemctl enable nodered
node-red-start
node-red-restart

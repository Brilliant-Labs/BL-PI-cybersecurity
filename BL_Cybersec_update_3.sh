#!/bin/bash

#run this line in console before run this script
#bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)
sudo systemctl enable nodered.service
node-red-start
node-red-restart
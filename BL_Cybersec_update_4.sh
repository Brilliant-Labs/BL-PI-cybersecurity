#!/bin/bash

sudo wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key
sudo apt-key add mosquitto-repo.gpg.key
cd /etc/apt/sources.list.d/
sudo wget http://repo.mosquitto.org/debian/mosquitto-stretch.list
sudo apt -y install mosquitto mosquitto-clients
sudo apt -y install python3-pip
sudo pip install --upgrade pip
sudo pip install paho-mqtt
sudo pip install mysql-connector-python
sudo pip install requests
sudo pip install pyserial

sudo rm /etc/mosquitto/mosquitto.conf
sudo echo "pid_file /var/run/mosquitto/mosquitto.pid">> /etc/mosquitto/mosquitto.conf
sudo echo "persistence true">> /etc/mosquitto/mosquitto.conf
sudo echo "persistence_location /var/lib/mosquitto/">> /etc/mosquitto/mosquitto.conf
sudo echo "log_dest file /var/log/mosquitto/mosquitto.log">> /etc/mosquitto/mosquitto.conf
sudo echo "include_dir /etc/mosquitto/conf.d">> /etc/mosquitto/mosquitto.conf
sudo echo "allow_anonymous true">> /etc/mosquitto/mosquitto.conf
sudo echo "port 1883">> /etc/mosquitto/mosquitto.conf

sudo service mosquitto stop
sudo service mosquitto start


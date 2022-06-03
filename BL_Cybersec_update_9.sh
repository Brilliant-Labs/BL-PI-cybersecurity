#!/bin/bash

#install hostapd for the creation of the access point.
sudo apt install -y hostapd

#enable the AP
sudo systemctl unmask hostapd
sudo systemctl enable hostapd

#install a service for DNS and DHCP...dnsmask
sudo apt install -y dnsmasq

#some firewall rules
sudo DEBIAN_FRONTEND=noninteractive apt install -y netfilter-persistent iptables-persistent

# ---------------------------------
# Configuration of the DHCP Server
# ---------------------------------
sudo echo "interface wlan0">> /etc/dhcpcd.conf
sudo echo "static ip_address=192.168.50.1/24">> /etc/dhcpcd.conf
sudo echo "nohook wpa_supplicant">> /etc/dhcpcd.conf
sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.orig
sudo touch /etc/dnsmasq.conf
sudo echo "interface=wlan0 # Listening interface">> /etc/dnsmasq.conf
sudo echo "dhcp-range=192.168.50.10,192.168.50.100,255.255.255.0,24h">> /etc/dnsmasq.conf
sudo echo "# Pool of IP addresses served via DHCP">> /etc/dnsmasq.conf
sudo echo "domain=wlan # Local wireless DNS domain">> /etc/dnsmasq.conf
sudo echo "address=/gw.wlan/192.168.50.1 # Alias for this router">> /etc/dnsmasq.conf

#hostapd config
sudo echo "country_code=CA">> /etc/hostapd/hostapd.conf
sudo echo "interface=wlan0">> /etc/hostapd/hostapd.conf
sudo echo "ssid=smartcity">> /etc/hostapd/hostapd.conf
sudo echo "hw_mode=g">> /etc/hostapd/hostapd.conf
sudo echo "channel=7">> /etc/hostapd/hostapd.conf
sudo echo "macaddr_acl=0">> /etc/hostapd/hostapd.conf
sudo echo "auth_algs=1">> /etc/hostapd/hostapd.conf
sudo echo "ignore_broadcast_ssid=0">> /etc/hostapd/hostapd.conf
sudo echo "wpa=2">> /etc/hostapd/hostapd.conf
sudo echo "wpa_passphrase=brilliantlabs">> /etc/hostapd/hostapd.conf
sudo echo "wpa_key_mgmt=WPA-PSK">> /etc/hostapd/hostapd.conf
sudo echo "wpa_pairwise=TKIP">> /etc/hostapd/hostapd.conf
sudo echo "rsn_pairwise=CCMP">> /etc/hostapd/hostapd.conf

#path to hostapd config
sudo echo "DAEMON_CONF=\"/etc/hostapd/hostapd.conf\"">> /etc/default/hostapd

#unblock wifi
sudo rfkill unblock wlan

#reboot the system
sudo systemctl reboot
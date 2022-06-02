#!/bin/bash

sudo apt install -y php php-mbstring php-zip php-gd php-json php-curl php-gettext
sudo apt install -y phpmyadmin
sudo ln -s /usr/share/phpmyadmin /var/www/html

sudo echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf


sudo /etc/init.d/apache2 restart
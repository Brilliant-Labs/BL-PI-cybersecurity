#!/bin/bash


sudo apt install -y mariadb-server-10.0
sudo apt install -y python3-mysqldb 
sudo mysql_secure_installation


#*******  execute manually
#sudo mysql -u root -p
#GRANT ALL PRIVILEGES ON *.* TO bl@localhost IDENTIFIED BY 'BLcybersec';
#GRANT ALL PRIVILEGES ON *.* TO phpmyadmin@localhost IDENTIFIED BY 'BLcybersec'; 
#CREATE USER 'pma'@'localhost' IDENTIFIED VIA mysql_native_password USING 'pmapass';
#GRANT SELECT, INSERT, UPDATE, DELETE ON `<pma_db>`.* TO 'pma'@'localhost';



sudo apt install -y php php-mbstring php-zip php-gd php-json php-curl php-gettext
sudo apt install -y phpmyadmin
sudo ln -s /usr/share/phpmyadmin /var/www/html

sudo echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf


sudo /etc/init.d/apache2 restart
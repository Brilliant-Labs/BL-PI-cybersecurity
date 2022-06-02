#!/bin/bash

sudo apt install -y mariadb-server-10.0
sudo apt install -y python3-mysqldb 
#rasp


#*******  execute manually
#sudo mysql -u root -p
#GRANT ALL PRIVILEGES ON *.* TO bl@localhost IDENTIFIED BY 'BLcybersec';
#GRANT ALL PRIVILEGES ON *.* TO phpmyadmin@localhost IDENTIFIED BY 'BLcybersec'; 
#CREATE USER 'pma'@'localhost' IDENTIFIED VIA mysql_native_password USING 'pmapass';
#GRANT SELECT, INSERT, UPDATE, DELETE ON `<pma_db>`.* TO 'pma'@'localhost';
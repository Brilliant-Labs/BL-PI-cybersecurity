#!/bin/bash


#copy IDE package in /git/microbitvnc

npm install -g http-server


(crontab -l; echo "@reboot http-server -c-1 /git/microbit/packaged")|awk '!x[$0]++'|crontab -
(crontab -l; echo "*/5 * * * * http-server -c-1 /git/microbit/packaged")|awk '!x[$0]++'|crontab -

#crontab -l > crontab_new 
#echo "@reboot http-server -c-1 /git/microbit/packaged" >> crontab_new
#echo "*/5 * * * * http-server -c-1 /git/microbit/packaged" >> crontab_new
#crontab crontab_new
#rm crontab_new




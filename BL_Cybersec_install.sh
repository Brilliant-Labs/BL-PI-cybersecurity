#!/bin/bash

sleep 5s
echo -n "********************"
echo -n "BL_Cybersec_update  "
echo -n "download            "
echo -n "********************"
sudo rm BL_Cybersec_update_1.sh
sudo rm BL_Cybersec_update_2.sh
sudo rm BL_Cybersec_update_3.sh
sudo wget https://raw.githubusercontent.com/Brilliant-Labs/BL-PI-cybersecurity/main/BL_Cybersec_update_1.sh
sudo wget https://raw.githubusercontent.com/Brilliant-Labs/BL-PI-cybersecurity/main/BL_Cybersec_update_2.sh
sudo wget https://raw.githubusercontent.com/Brilliant-Labs/BL-PI-cybersecurity/main/BL_Cybersec_update_3.sh
sudo chmod +x BL_Cybersec_update_1.sh
sudo chmod +x BL_Cybersec_update_2.sh
sudo chmod +x BL_Cybersec_update_3.sh

sleep 5s
echo -n "********************"
echo -n "BL_Cybersec_update_1"
echo -n "install             "
echo -n "********************"
sh BL_Cybersec_update_1.sh

sleep 5s
echo -n "********************"
echo -n "BL_Cybersec_update_2"
echo -n "install             "
echo -n "********************"
sh BL_Cybersec_update_2.sh

sleep 5s
echo -n "********************"
echo -n "BL_Cybersec_update_3"
echo -n "install             "
echo -n "********************"
sh BL_Cybersec_update_3.sh


sleep 5s
echo -n "********************"
echo -n "BL_Cybersec_db  "
echo -n "download            "
echo -n "********************"
sudo rm BL_Cybersec_db.sh
sudo wget https://raw.githubusercontent.com/Brilliant-Labs/BL-PI-cybersecurity/main/BL_Cybersec_db.sh
sudo chmod +x BL_Cybersec_db.sh

sleep 5s
echo -n "********************"
echo -n "BL_Cybersec_db      "
echo -n "install             "
echo -n "********************"
# sh BL_Cybersec_db.sh
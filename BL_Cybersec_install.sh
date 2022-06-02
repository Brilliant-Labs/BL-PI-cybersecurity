#!/bin/bash

sleep 5s
echo "********************"
echo "BL_Cybersec_update  "
echo "download            "
echo "********************"
sudo rm BL_Cybersec_update_1.sh
sudo rm BL_Cybersec_update_2.sh
sudo rm BL_Cybersec_update_3.sh
sudo rm BL_Cybersec_update_4.sh
sudo rm BL_Cybersec_db.sh
sudo wget https://raw.githubusercontent.com/Brilliant-Labs/BL-PI-cybersecurity/main/BL_Cybersec_update_1.sh
sudo wget https://raw.githubusercontent.com/Brilliant-Labs/BL-PI-cybersecurity/main/BL_Cybersec_update_2.sh
sudo wget https://raw.githubusercontent.com/Brilliant-Labs/BL-PI-cybersecurity/main/BL_Cybersec_update_3.sh
sudo wget https://raw.githubusercontent.com/Brilliant-Labs/BL-PI-cybersecurity/main/BL_Cybersec_update_4.sh
sudo wget https://raw.githubusercontent.com/Brilliant-Labs/BL-PI-cybersecurity/main/BL_Cybersec_db.sh
sudo chmod +x BL_Cybersec_update_1.sh
sudo chmod +x BL_Cybersec_update_2.sh
sudo chmod +x BL_Cybersec_update_3.sh
sudo chmod +x BL_Cybersec_update_4.sh
sudo chmod +x BL_Cybersec_db.sh


# sh BL_Cybersec_update_1.sh
# sh BL_Cybersec_update_2.sh
# sh BL_Cybersec_update_3.sh
# sh BL_Cybersec_update_4.sh
# sh BL_Cybersec_db.sh
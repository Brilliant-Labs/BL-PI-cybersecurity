#!/bin/bash
rm BL_Cybersec_install.sh
wget https://raw.githubusercontent.com/Brilliant-Labs/BL-PI-cybersecurity/89ccaf3e95472c2a816236339f094b27d01111ea/BL_Cybersec_update.sh
sudo chmod +x BL_Cybersec_update.sh
sh BL_Cybersec_install.sh
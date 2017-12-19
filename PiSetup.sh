#!/bin/bash  
sudo apt-get update 
sudo apt-get dist-upgrade
sudo apt-get autoremove
sudo rpi-update
sudo apt-get install -y zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 
rm ~/.zshrc 
cp zshrc ~/.zshrc

#echo 'alias nano="sudo nano"
#     alias update="sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt-get autoremove && sudo r$
#     alias aptin="sudo apt-get install -y"
#     alias apts="sudo apt-cache search"
#     alias remove="sudo apt-get purge"
#     alias status="sudo systemctl status"
#    alias enable="sudo systemctl enable"
#     alias disable="sudo systemctl disable"
#     alias restart="sudo systemctl restart"
#     alias failed="sudo systemctl --failed"
#     alias reboot="sudo reboot"
#     alias poweroff="sudo poweroff"' >> ~/.zshrc &&

chsh -s /bin/zsh 

zsh

echo "Done!"

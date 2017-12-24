#!/bin/bash  

# Update the system
sudo apt-get update &&
sudo apt-get dist-upgrade &&
sudo apt-get autoremove &&
sudo rpi-update &&
# Install ZSH
sudo apt-get install -y zsh &&
# Grab and install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"  &&
# Delete zsh config file that Oh my zsh installs automatically
rm ~/.zshrc &&
# Move our config file to the right directory
cp zshrc ~/.zshrc &&
# Change user shell in system
chsh -s /bin/zsh &&
# Let's change into our new shell
zsh &&

echo "Done! You may want to reboot if Raspi FW was updated."

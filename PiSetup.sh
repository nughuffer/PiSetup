#!/bin/bash  

# Update the system
sudo apt-get update &&
sudo apt-get dist-upgrade &&
sudo apt-get autoremove &&
sudo rpi-update &&
# Install ZSH
sudo apt-get install -y zsh &&
# Install Screenfetch
git clone https://github.com/kittykatt/screenFetch &&
sudo cp screenFetch/screenfetch-dev /usr/bin/screenfetch &&
cd &&
sudo rm -R screenFetch &&
# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"  &&
# Delete zsh config file that Oh my zsh installs automatically
rm ~/.zshrc &&
# Move our config file to the right directory
cp zshrc ~/.zshrc &&
echo "Type exit to complete setup" && 
# Change user shell in system
chsh -s /bin/zsh &&

echo "Done! You may want to reboot if Raspi FW was updated."

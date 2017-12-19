# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

  export ZSH=/home/pi/.oh-my-zsh

  ZSH_THEME="candy"

 ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git python
)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch arm"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

     screenfetch

     alias nano="sudo nano"
     alias update="sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade 
     && sudo apt-get autoremove && sudo rpi-update"
     alias aptin="sudo apt-get install -y"
     alias apts="sudo apt-cache search"
     alias remove="sudo apt-get purge"
     alias status="sudo systemctl status"
     alias enable="sudo systemctl enable"
     alias disable="sudo systemctl disable"
     alias restart="sudo systemctl restart"
     alias failed="sudo systemctl --failed"
     alias reboot="sudo reboot"
     alias poweroff="sudo poweroff"

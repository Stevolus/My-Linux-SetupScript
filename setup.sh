#!/bin/bash

#Update and upgrade packages
apt update && apt -y upgrade


# -=My dot files=-

#Add colours
echo "export PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[32;47m\]\\$\[\e[m\] "" > ~/.bashrc

#Make du sort by size, show date, set size in MB and only show for the current folder.
echo "alias du="du -hd1 --time --block-size=MB | sort -hr"" > ~/.bashrc

#ZSH like CD commands for going back more than one directory 
echo "alias cd"

#Apply above .bashrc settings
source ~/.bashrc

#Install Micro editor
curl https://getmic.ro | bash

#Install LAMP?
#apt install -y tasksel && apt tasksel install lamp-server


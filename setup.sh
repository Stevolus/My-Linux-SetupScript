#!/bin/bash

#Update repositories and packages
apt update && apt -y upgrade

#Add colours to prompt
echo "export PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[32;47m\]\\$\[\e[m\] "" > ~/.bashrc

#Install Micro editor
curl https://getmic.ro | bash

#Install LAMP?
apt install -y tasksel && apt tasksel install lamp-server

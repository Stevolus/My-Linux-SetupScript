# Enable 32bit package repository
sed -i '/[multilib]/{n;s/^.//;}' /etc/pacman.conf

# Add Pac-Man progress bar effect for pacman package manager
sed -i '34iILoveCandy' /etc/pacman.conf

#Add bash colours
echo "export PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[32;47m\]\\$\[\e[m\] "" > ~/.bashrc

# Update all packages
pacman -Syu --noconfirm

# Install common utils
pacman -S wget git htop micro base-devel steam lutris sudo # Add more

# Install yay package manager
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && rm -rf yay


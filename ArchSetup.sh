# Enable 32bit package repository
sed -i '/[multilib]/{n;s/^.//;}' /etc/pacman.conf

# Add Pac-Man progress bar effect for pacman package manager
sed -i '34iILoveCandy' /etc/pacman.conf

# Update all packages
pacman -Syu --noconfirm

# Install common utils
pacman -S wget git htop micro base-devel # Add more

# Install yay package manager
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && rm -rf yay




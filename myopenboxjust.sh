# Debian Devuan clean install
# http://www.deb-multimedia.org bockworm main non-free
# http://ftp.debian.org/debian bockworm-backports main non-free
#sudo apt update -oAcquire::AllowInsecureRepositories=true
#sudo apt install -y git
sudo ufw enable
#git clone https://github.com/VicGuer/my-Openbox-Script
#cd my-Openbox-Script
#chmod +x install.sh
#./install.sh
sudo dd if=/dev/zero of=/swapfile bs=1M count=512 status=progress
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xinput
#(openbox obconf openbox-menu lxdm lxterminal thunar nitrogen x11-xserver-utils geany firefox-esr
#arandr synaptic pnmixer pulseaudio gsimplecal xfce4-notifyd xfce4-power-manager picom lxpolkit
#connman galculator ristretto htop neofetch xarchiver p7zip-full p7zip-rar rar unrar unzip bzip2
#lzappearance
# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential systemctl
# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 
# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid
# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa
# Neofetch/HTOP
sudo apt install -y neofetch htop geany pcmanfm synaptic
# Network Manager
sudo apt install -y connman
# Installation for Appearance management
sudo apt install -y lxappearance firefox-esr feh
 # Fonts and icons for now
sudo apt install -y fonts-firacode fonts-liberation2 fonts-ubuntu papirus-icon-theme gnome-themes-extra
# Openbox packages
sudo apt install -y openbox dbus-x11 hsetroot i3lock libnotify-bin lximage-qt menu picom  plank  rofi xfce4-power-manager

# LXDM login manager
#sudo apt install -y lxdm
#sudo systemctl enable lxdm

# Configuration Setup
mkdir -p ~/.config/openbox
cp -a /etc/xdg/openbox/ ~/.config/
sudo apt autoremove

printf "\e[1;32mNever GiveUP! Reboot Ya.\e[0m\n"

# despues configurar autostart esta en /etc/xdg/openbox (picom &, plank & feh --bg-fill ~Pictures/wallpaper.png &)
# lxdm autostart en /etc/lxdm/lxdm.config
# grub en /etc/default/grub de 5 a 0 seg
#habilitar swapfile en /etc/fstab

#

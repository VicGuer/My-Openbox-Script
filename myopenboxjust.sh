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
#sudo dd if=/dev/zero of=/swapfile bs=1M count=512 status=progress
#sudo chmod 600 /swapfile
#sudo mkswap /swapfile
#sudo swapon /swapfile
sudo apt install -y x11-utils xinit openbox lxdm lxpolkit lxrandr synaptic
sudo apt install -y htop neofetch xarchiver thunar geany pnmixer pulseaudio obconf
sudo apt install -y nitrogen file-roller picom galculator lxappearance gnome-themes-extra
sudo apt install -y build-essential systemctl amd64-microcode lxde-core

sudo apt autoremove

printf "\e[1;32mNever GiveUP! Reboot Ya.\e[0m\n"

# despues configurar autostart esta en /etc/xdg/openbox (picom &, plank & feh --bg-fill ~Pictures/wallpaper.png &)
# lxdm autostart en /etc/lxdm/lxdm.config
# grub en /etc/default/grub de 5 a 0 seg
#habilitar swapfile en /etc/fstab

#

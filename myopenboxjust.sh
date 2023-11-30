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
sudo apt install -y x11-utils xinit openbox lxdm lxpolkit lxrandr lxpanel lxde-core lxde-common
sudo apt install -y htop neofetch geany pnmixer pulseaudio lxappearance obconf synaptic abyword 
sudo apt install -y nitrogen galculator gnome-themes-extra firefox-esr 
sudo apt install -y build-essential amd64-microcode 

sudo apt autoremove
sudo reboot

# despues configurar autostart esta en /etc/xdg/openbox (picom &, plank & feh --bg-fill ~Pictures/wallpaper.png &)
# lxdm autostart en /etc/lxdm/lxdm.config
# grub en /etc/default/grub de 5 a 0 seg
#habilitar swapfile en /etc/fstab

#

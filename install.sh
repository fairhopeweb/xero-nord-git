#!/bin/bash
#set -e
echo "##########################################"
echo "Be Careful this will override your Rice!! "
echo "##########################################"
sleep 5
echo "Creating Backups of ~/.config folder"
echo "#####################################"
cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)
sleep 2
echo "Installing required Tools"
echo "#################################"
sudo pacman -S --needed --noconfirm kvantum latte-dock lolcat neofetch yakuake
sudo pacman -R --noconfirm plasma-workspace-wallpapers
sleep 2
echo "Installing Nord Theme"
echo "#################################"
sudo pacman -S --needed --noconfirm kvantum-theme-nordic-git nordic-darker-standard-buttons-theme nordic-darker-theme nordic-kde-git nordic-theme sddm-nordic-theme-git zafiro-icon-theme nordic-wallpapers
sleep 2
echo "Installing Fonts"
echo "#################################"
sudo pacman -S --needed --noconfirm nerd-fonts-hack nerd-fonts-fira-code nerd-fonts-meslo nerd-fonts-terminus noto-fonts-emoji
sleep 2
echo "Applying new Rice, hold on..."
echo "#################################"
cp -Rf Configs/Home/. ~
sudo cp -Rf Configs/System/. /
sleep 2
echo "Applying Grub Theme...."
echo "#################################"
chmod +x XeroNord.sh
sudo ./XeroNord.sh
sudo sed -i "s/#GRUB_GFXMODE=640x480/GRUB_GFXMODE=1920x1080/g" /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sleep 2
echo "LightlyShaders Build & Install"
echo "#################################"
git clone https://github.com/a-parhom/LightlyShaders
cd LightlyShaders; mkdir qt5build; cd qt5build; cmake ../ -DCMAKE_INSTALL_PREFIX=/usr -DQT5BUILD=ON && make && sudo make install
sleep 2
echo "Rebooting system in 5 seconds..."
echo "#################################"
sleep 5
sudo reboot





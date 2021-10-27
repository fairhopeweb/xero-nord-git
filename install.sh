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
sudo pacman -S --needed --noconfirm kvantum-qt5 latte-dock lolcat neofetch yakuake
sleep 2
echo "Installing Nord Theme"
echo "#################################"
sudo pacman -S --needed --noconfirm kvantum-theme-nordic-git nordic-darker-standard-buttons-theme nordic-darker-theme nordic-kde-git nordic-theme sddm-nordic-theme-git zafiro-icon-theme
sleep 2
echo "Installing Fonts"
echo "#################################"
sudo pacman -S --needed --noconfirm awesome-terminal-fonts nerd-fonts-fira-code noto-fonts-emoji otf-libertinus tex-gyre-fonts ttf-droid ttf-hack ttf-roboto
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
sleep 2
echo "Rebooting system in 5 seconds..."
echo "#################################"
sleep 5
sudo reboot





#!/bin/bash
#set -e
echo "##########################################"
echo "Be Careful this will override your Rice!! "
echo "##########################################"
sleep 5
echo "Creating Backups of ~/.config folder"
echo "#####################################"
cp -r ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)
sleep 2
echo "Removing old Latte-Dock & Lightly"
echo "#################################"
sudo pacman -R --noconfirm lightly-git
sudo pacman -R --noconfirm latte-dock
sleep 2
echo "Installing New latte-Git version"
echo "#################################"
sudo pacman -S --needed --noconfirm latte-dock-git kvantum
sleep 2
echo "Installing Nord Theme"
echo "#################################"
sudo pacman -S --needed --noconfirm kvantum-theme-nordic-git nordic-darker-standard-buttons-theme nordic-darker-theme-git nordic-kde-git nordic-theme sddm-nordic-theme-git nordic-kde-transparency-git tela-nord-icon-theme-git nordic-wallpapers
sleep 2
echo "Installing Fonts"
echo "#################################"
sudo pacman -S --needed --noconfirm nerd-fonts-hack nerd-fonts-fira-code nerd-fonts-meslo nerd-fonts-terminus noto-fonts-emoji
sleep 2
echo "Applying new Rice, hold on..."
echo "#################################"
cp -Rf Configs/Home/. ~
sudo cp -Rf Configs/System/. /
sed -i "s/{.*}/{C1}/g" ~/XeroAscii
sudo sed -i "s/Current=.*/Current=Nordic/" /etc/sddm.conf.d/kde_settings.conf
sudo sed -i "s/CursorTheme=.*/CursorTheme=Nordzy-cursors/" /etc/sddm.conf.d/kde_settings.conf
sleep 2
echo "Applying Flatpak Theme Fix..."
echo "#################################"
cp -r /usr/share/themes/Nordic-darker ~/.themes/
sleep 2
echo "Applying Grub Theme...."
echo "#################################"
chmod +x XeroNord.sh
sudo ./XeroNord.sh
sudo sed -i "s/#GRUB_GFXMODE=640x480/GRUB_GFXMODE=1920x1080/g" /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sleep 2
echo "Reboot system To activate new rice."
echo "###################################"

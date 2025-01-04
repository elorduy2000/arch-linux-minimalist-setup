#!/bin/bash

function confirm() {
    while true; do
        read -p "Stop execution? (y/N) " yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer 'y' or 'n'";;
        esac
    done
}

#if confirm; then
#    exit
#fi

echo ""
cat figlet.txt
echo ""
echo ""

echo "STARTED!"
echo ""

echo ">>> Ensuring folders..."
    mkdir -pv ~/Wallpapers
    mkdir -pv ~/Scripts
    mkdir -pv ~/.config
echo ""

echo ">>> Copying files..."
    cp -r ~/Downloads/arch-linux-minimalist-setup/Wallpapers/* ~/Wallpapers/
    cp -r ~/Downloads/arch-linux-minimalist-setup/Scripts/* ~/Scripts/
    find ~/Scripts/ -type f -exec chmod +x {} \;
echo ""

echo ">>> Ricing console..."
    # Set terminus font
    sudo pacman -S --noconfirm --needed terminus-font
    sudo mv /etc/vconsole.conf /etc/vconsole.conf.backup
    sudo cp ~/Downloads/arch-linux-minimalist-setup/dotfiles/console/vconsole.conf /etc/vconsole.conf
    setfont ter-u22n

    # This packages already have been installed!
    #sudo pacman -S --noconfirm --needed micro
    #sudo pacman -S --noconfirm --needed git

    sudo pacman -S --noconfirm --needed fastfetch
    sudo cp ~/Downloads/arch-linux-minimalist-setup/dotfiles/fastfetch/resilente.jsonc /usr/share/fastfetch/presets/resilente.jsonc

    sudo pacman -S --noconfirm --needed onefetch
    sudo pacman -S --noconfirm --needed tldr    
    sudo pacman -S --noconfirm --needed btop
    sudo pacman -S --noconfirm --needed htop 
    sudo pacman -S --noconfirm --needed fzf 
    sudo pacman -S --noconfirm --needed bat     
    sudo pacman -S --noconfirm --needed glow
    sudo pacman -S --noconfirm --needed duf  
echo ""

echo ">>> Enabling user repositories..."
    # paru
    sudo pacman -S --needed base-devel
    cd ~/Downloads
    git clone https://aur.archlinux.org/paru.git
    cd ~/Downloads/paru
    makepkg -si
    cd ~
echo ""

echo ">>> Ricing bash..."
    paru -S --noconfirm --needed gols

    sudo pacman -S --noconfirm --needed starship
    mv ~/.bashrc ~/.bashrc.backup
    cp ~/Downloads/arch-linux-minimalist-setup/dotfiles/bash/.bashrc ~/.bashrc
echo ""

echo ">>> Ricing hyprland..."
    sudo pacman -S --noconfirm --needed ttf-fira-code
    sudo pacman -S --noconfirm --needed ttf-firacode-nerd
    sudo pacman -S --noconfirm --needed hyprland
    sudo pacman -S --noconfirm --needed foot
    sudo pacman -S --noconfirm --needed rofi-wayland
    sudo pacman -S --noconfirm --needed swww
    sudo pacman -S --noconfirm --needed waybar
    paru -S --noconfirm --needed python-pywal16
echo ""

echo ">>> Copying configuration files..."
    mv ~/.config/hypr/hyprland.conf ~/.config/hypr/hyprland.conf.backup
    cp -r ~/Downloads/arch-linux-minimalist-setup/dotfiles/.config/* ~/.config/
echo ""

echo ">>> Installing applications..."
	sudo pacman -S --noconfirm --needed thunar
	sudo pacman -S --noconfirm --needed nwg-look	
	sudo pacman -S --noconfirm --needed firefox
	sudo pacman -S --noconfirm --needed vlc
	sudo pacman -S --noconfirm --needed libreoffice-still
echo ""

echo ""
echo "DONE!"
echo ""

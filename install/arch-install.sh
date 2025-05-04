#!/usr/bin/sh

# install needed packages
sudo pacman -S --needed --noconfirm git tmux nvim vim gcc openssh wget man-db jdk21-openjdk zip unzip python ripgrep

if [ -d "~/.config/nvim" ]; then
    mv -f ~/.config/nvim ~/.var/nvim-config-backup
    echo "Created backup of existed ~/.config/nvim config to ~/.var/nvim"
fi

# cloning config from git to ~/.config/nvim
git clone https://github.com/wtrce-remastered/nvim-config.git ~/.config/nvim

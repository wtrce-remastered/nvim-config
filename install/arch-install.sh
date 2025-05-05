#!/usr/bin/sh

# install needed packages
sudo pacman -S --needed --noconfirm git nvim gcc zip unzip python ripgrep wl-clipboard

# for java
# sudo pacman -S --needed --noconfirm jdk21-openjdk

if [ -d "~/.config/nvim" ]; then
    mv -f ~/.config/nvim ~/.var/nvim-config-backup
    echo "Created backup of existed ~/.config/nvim config to ~/.var/nvim"
fi

# cloning config from git to ~/.config/nvim
git clone https://github.com/wtrce-remastered/nvim-config.git ~/.config/nvim

#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo add-apt-repository -y ppa:mmstick76/alacritty
sudo add-apt-repository -y ppa:regolith-linux/stable


echo -e "\n Installing packages...\n"
sudo apt install zsh neovim curl wget tmux alacritty

echo -e "\n Installing Oh My Zsh"

#Oh my Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "\n Installing POWERLEVEL10K"
#Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo -e "\n Creating directories."
mkdir -p $HOME/.sources/bin
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/i3 $HOME/.config/i3status

DOT=$(pwd)

cp $DOT/aliases.zsh $HOME/.sources
cp $DOT/zsh $HOME/.sources

cp $DOT/nvim $HOME/.config/nvim/init.vim
cp $DOT/zshrc $HOME/.zshrc

cp $DOT/i3 $HOME/.config/i3/config
cp $DOT/i3status $HOME/.config/i3status/config

chsh -s $(which zsh)

echo "Restarting the computer...\n"
sudo reboot now

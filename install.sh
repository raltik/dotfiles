#!/bin/bash

sudo apt update

echo -e "\n Installing packages...\n"
sudo apt install zsh neovim git curl

echo -e "\n Installing Oh My Zsh"

#Oh my Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "\n Installing theme"
#Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo -e "\n Creating directories."

mkdir -p $HOME/.sources/bin
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.local/share/fonts

cd $HOME/

DOT=$HOME/code/dotfiles

cp $DOT/zsh $HOME/.sources
cp $DOT/nvim/init.vim $HOME/.config/nvim
cp $DOT/fonts/* $HOME/.local/share/fonts
cp $DOT/p10k.zshr $HOME/.p10k.zsh
cp $DOT/zshrc $HOME/.zshrc

chsh -s $(which zsh)

echo "Restart the computer."

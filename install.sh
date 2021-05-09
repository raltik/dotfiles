#!/bin/bash

sudo apt update

echo -e "\n Installing packages...\n"
sudo apt install zsh neovim curl wget tmux tmuxinator

echo -e "\n Installing Oh My Zsh"

#Oh my Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "\n Installing POWERLEVEL10K"
#Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo -e "\n Creating directories."

mkdir -p $HOME/.sources/bin
mkdir -p $HOME/.config/tmuxinator

DOT=$HOME/code/dotfiles

cp $DOT/vimrc $HOME/.vimrc
cp $DOT/zshrc $HOME/.zshrc

chsh -s $(which zsh)

echo "Restart the computer."


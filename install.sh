#!/bin/bash

sudo apt update

echo -e "\n Installing packages...\n"
sudo apt install zsh neovim git curl wget gitg alacritty tmux

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
mkdir -p $HOME/.config/alacritty
mkdir -p $HOME/.config/tmuxinator

cd $HOME/

DOT=$HOME/code/dotfiles

cp $DOT/zsh $HOME/.sources
cp $DOT/neovim/init.vim $HOME/.config/nvim
cp $DOT/fonts/* $HOME/.local/share/fonts
cp $DOT/p10k.zsh $HOME/.p10k.zsh
cp $DOT/zshrc $HOME/.zshrc

cp $DOT/alacritty/alacritty.yml $HOME/.config/alacritty
cp $DOT/tmux/tmux.conf $HOME/.tmux.conf
cp $DOT/tmux/tmuxinator/tfg.yml $HOME/.config/tmuxinator/tfg.yml

chsh -s $(which zsh)

echo -e "\nInstalling Telegram"
sudo apt install telegram-desktop

echo "Restart the computer."


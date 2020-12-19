#!/bin/bash

sudo apt update

echo -e "\n Installing packages...\n"
sudo apt install zsh neovim git curl wget gitg

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
cp $DOT/p10k.zsh $HOME/.p10k.zsh
cp $DOT/zshrc $HOME/.zshrc

chsh -s $(which zsh)

echo -e "\nInstalling spotify."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client spotify-client-gnome-support

echo -e "\nInstalling VSCode"
cd /tmp
wget https://az764295.vo.msecnd.net/stable/d2e414d9e4239a252d1ab117bd7067f125afd80a/code_1.50.1-1602600906_amd64.deb -O code.deb
sudo apt install ./code.deb

echo -e "\nInstalling Telegram"
sudo apt install telegram-desktop

echo -e "\nInstalling Discord"
wget https://dl.discordapp.net/apps/linux/0.0.12/discord-0.0.12.deb -O discord.deb
sudo apt install ./discord.deb


echo "Restart the computer."


#!/bin/bash
#Termux upgrade package ...
pkg upgrade -y
#Termux install package ...
pkg install zsh curl git ruby cowsay -y
#install lolcat ...
gem install lolcat
#install and setup basic oh-my-zsh ...
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#set theme oh-my-zsh
sed -i -e "s/robbyrussell/agnoster/g" ~/.zshrc
cp ~/termux-setup-basic/fonts/font.ttf ~/.termux/

#touch keyboard
mkdir .termux
touch termux.properties
echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" > ~/.termux/termux.properties

#banner
cat banner.txt >> $PREFIX/etc/zshrc

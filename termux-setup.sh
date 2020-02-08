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
cp termux-setup-basic/fonts/font.ttf ~/.termux/
#edit banner
echo "clear" >> $PREFIX/etc/zshrc

echo "cowsay -f eyes @hydra2ker | lolcat" >> $PREFIX/etc/zshrc

echo "echo -n "\e[0;32mToday It:\e[m\t\t"" >> $PREFIX/etc/zshrc

echo "date | lolcat" >> $PREFIX/etc/zshrc

echo "echo -n "\e[0;32mKernel Information:\e[m\t"" >> $PREFIX/etc/zshrc

echo "uname -r | lolcat" >> $PREFIX/etc/zshrc

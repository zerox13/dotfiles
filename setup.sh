#!/bin/bash
ln -f ~/dotfiles/.vimrc ~/.vimrc
ln -f ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -f ~/dotfiles/.bashrc ~/.bashrc
ln -f ~/dotfiles/.zshrc ~/.zshrc

ln -f ~/dotfiles/.functions ~/.functions
ln -f ~/dotfiles/.paths ~/.paths
ln -f ~/dotfiles/.aliases ~/.aliases

#Checks if i3 installed, to link i3 config
if [[ `which i3` == *i3 ]]
then
	ln -f ~/dotfiles/i3/config ~/.config/i3
	ln -f ~/dotfiles/i3/i3blocks ~/.config/i3
	echo "i3 is set up"
fi


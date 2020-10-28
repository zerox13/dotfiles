#!/bin/bash

setupVim () {
	if [ ! -d "../.vim/bundle/Vundle.vim/" ]; then
		git clone https://github.com/VundleVim/Vundle.vim.git ../.vim/bundle/Vundle.vim
		vim +PluginInstall +qall
		echo cloned Vundle, and plugins should be installed, You might need to run PluginInstall in Vim 
	fi
	# Linking the vimrc file
	ln -f ~/dotfiles/.vimrc ~/.vimrc

}

vscodePath=""

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    #Checks if i3 installed, to link i3 config
    if [[ `which i3` == *i3 ]]
    then
        ln -f ~/dotfiles/i3/config ~/.config/i3
        ln -f ~/dotfiles/i3/i3blocks ~/.config/i3
        echo "i3 is set up"
    fi
    #TODO: Set the path of vscode setting on linux
    vscodePath="/home/dv18/dv18aar/.config/Code/User"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
    vscodePath="/Users/abdulsalamaldahir/Library/Application\ Support/Code/User"
fi

#Handle general settings
ln -f ~/dotfiles/vscode/settings.json $vscodePath
ln -f ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -f ~/dotfiles/.bashrc ~/.bashrc
ln -f ~/dotfiles/.functions ~/.functions
ln -f ~/dotfiles/.aliases ~/.aliases
setupVim

if [[ `which zsh` == *zsh ]]; then
    ln -f ~/dotfiles/.zshrc ~/.zshrc
    echo "zsh is set up"
fi



#!/bin/bash
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

elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
    vscodePath="/Users/abdulsalamaldahir/Library/Application Support/Code/User"
    ln -f ~/dotfiles/vscode/settings.json $vscodePath
fi

#Handle general settings
ln -f ~/dotfiles/.vimrc ~/.vimrc
ln -f ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -f ~/dotfiles/.bashrc ~/.bashrc
ln -f ~/dotfiles/.functions ~/.functions
ln -f ~/dotfiles/.aliases ~/.aliases


if [[ `which zsh` == *zsh ]]; then
    ln -f ~/dotfiles/.zshrc ~/.zshrc
    echo "zsh is set up"
fi


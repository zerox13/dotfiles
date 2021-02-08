#!/bin/bash

#Auther: Abdulsalam Aldahir


printHelp(){
	echo "Usage:"
	echo -e "\t./setup <option>"
	echo "OPTIONS:"
	echo -e "\tall\t Setup everything"
	echo -e "\tgeneral\t Setup the common dotfiles (tmux, bashrc, zsh, aliases, functions)"
	echo -e "\tvim\t Setup only vim"
	echo -e "\ti3\t Setup only i3"
	echo -e "\tvscode\t Setup only vscode"
	echo -e "\thelp\t Prints this menu"
}

setupVim () {
	echo "Setting vim up ..."
	[ ! -d "../.vim/bundle/Vundle.vim/" ] &&
		git clone https://github.com/VundleVim/Vundle.vim.git ../.vim/bundle/Vundle.vim &&
		vim +PluginInstall +qall && 
		echo "cloned Vundle, and plugins should be installed, You might need to run PluginInstall in Vim"
	git clone https://github.com/VundleVim/Vundle.vim.git ../.vim/bundle/Vundle.vim &&
	vim +PluginInstall +qall &&
	echo cloned Vundle, and plugins should be installed, You might need to run PluginInstall in Vim 
		
	# Linking the vimrc file
	ln -f ~/dotfiles/.vimrc ~/.vimrc
}

setupI3(){
	echo "Setting i3 up ..."
	if [[ `which i3` == *i3 ]]
	then
		ln -f ~/dotfiles/i3/config ~/.config/i3
		ln -f ~/dotfiles/i3/i3blocks ~/.config/i3
		echo "i3 is set up"
		fi

	which i3 1> /dev/null && 
	ln -f ~/dotfiles/i3/config ~/.config/i3 &&
	ln -f ~/dotfiles/i3/i3blocks ~/.config/i3 &&
	echo "i3 is set up"
}

setupVscode(){
	echo "Setting vscode up ..."
	vscodePath=""
	#TODO: Set the path of vscode setting on linux
	[ "$OSTYPE" == "linux-gnu"* ] && vscodePath="/home/dv18/dv18aar/.config/Code/User"
	# Mac OSX
	[ "$OSTYPE" == "darwin"* ] && vscodePath="/Users/abdulsalamaldahir/Library/Application\ Support/Code/User"

	ln -f ~/dotfiles/vscode/settings.json $vscodePath
}

generalSetup(){
	echo "general Setup is going on ..."
	#Handle general settings
	ln -f ~/dotfiles/.tmux.conf ~/.tmux.conf
	ln -f ~/dotfiles/.bashrc ~/.bashrc
	ln -f ~/dotfiles/.functions ~/.functions
	ln -f ~/dotfiles/.aliases ~/.aliases
	ln -f ~/dotfiles/.ghci ~/.ghci

	[[ `which zsh` == *zsh ]] &&
		ln -f ~/dotfiles/.zshrc ~/.zshrc
		echo "zsh is set up"
	which zsh 1> /dev/null && 
	ln -f ~/dotfiles/.zshrc ~/.zshrc &&
	echo "zsh is set up"
}

 #setupVim
 #printHelp


 [ $# != 1 ] && printHelp && exit 0 

 case $1 in 
	 all) generalSetup && setupVim;;
	 general) generalSetup;;
	 vim) setupVim;;
	 i3) setupI3;;
	 vscode) setupVscode;;
	 help) printHelp;;
 esac


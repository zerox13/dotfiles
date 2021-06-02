autoload -U colors && colors
#
#Do things related to my mac (There should be a better way to detect the OS!!!)
if [[ "$OSTYPE" == "darwin"* ]] then 
	 #set the path to zsh highlighting dynamic
    zshHighlightPath="/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
	 export PATH="$PATH:/Users/abdulsalamaldahir/development/flutter/bin"
else
    #TODO: Change this to debian/Linux path
    zshHighlightPath="usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

#Auto complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) #Include hidden files

#Vim 
#bindkey -v
#export KEYTIMEOUT=1

if [ -e $HOME/zsh/manjaro-zsh-prompt ]; then
	source $HOME/zsh/manjaro-zsh-prompt
fi


#-----< Update the alias >------
if [ -f ~/.aliases ]; then
. ~/.aliases
fi


#-------> My Function <----------
if [ -f ~/.functions ]; then
. ~/.functions
fi

if [ -f ~/.profile ]; then
. ~/.profile
fi

if [ -f ~/.self ]; then
. ~/.self
fi


#This should be last

#This should also be last?
#This is the starship prompt thing
#eval "$(starship init zsh)"
source $zshHighlightPath 2> /dev/null

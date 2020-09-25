autoload -U colors && colors
PROMPT="%(?.%F{green}√.%F{red}?) %F{red}%!%B %F{yellow}Abbe%F{red}@%F{blue}%m %b%F{white}[%3~] %F{red}%#-->%F{yellow} "


zshHighlight=""
if [[ `which brew` == *brew ]] #Do things related to my mac (There should be a better way to detect the OS!!!)
then 
	 #Make the path to zsh highlighting dynamic
    zshHighlight="/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
	 export PATH="$PATH:/Users/abdulsalamaldahir/development/flutter/bin"
else
    #TODO: Change this to debian/Linux path
    zshHighlight="/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

#Auto complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) #Include hidden files

#Vim 
bindkey -v
export KEYTIMEOUT=1

#-----< Update the alias >------
if [ -f ~/.aliases ]; then
. ~/.aliases
fi


#-------> My Function <----------
if [ -f ~/.functions ]; then
. ~/.functions
fi

#-------> Paths <----------
if [ -f ~/.paths ]; then
. ~/.paths
fi
#This should be last
source $zshHighlight 2> /dev/null

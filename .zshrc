autoload -U colors && colors
PROMPT=""
PROMPT+="%F{red}┌─"
PROMPT+="[%(?.%F{green}√.%F{red}?) %F{red}%!]─"
PROMPT+="[%B%F{yellow}Abbe%F{red}@%F{cyan}%m%b%F{red}]─"
PROMPT+="[%F{white}%6~%F{red}] "
PROMPT+="
└──╼ %# %F{yellow}"


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

#-----< Update the alias >------
if [ -f ~/.aliases ]; then
. ~/.aliases
fi


#-------> My Function <----------
if [ -f ~/.functions ]; then
. ~/.functions
fi

#This should be last
source $zshHighlightPath 2> /dev/null

#This should also be last?
#This is the starship prompt thing
eval "$(starship init zsh)"

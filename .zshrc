autoload -U colors && colors
PROMPT="%(?.%F{green}√.%F{red}?) %F{red}%!%B %F{yellow}Abbe%F{red}@%F{blue}%m %b%F{white}[%3~] %F{red}%#-->%F{yellow} "


#Make the path to zsh highlighting dynamic
zshHighlight=""
if [[ `which brew` == *brew ]]
then
    zshHighlight="/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
else
    #TODO: Change this to debian/Linux path
    zshHighlight="/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi


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
source $zshHighlight 2> /dev/null

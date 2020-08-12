PROMPT="%(?.%F{green}√.%F{red}?) %F{red}%!%B %F{yellow}Abbe%F{red}@%F{blue}%m %b%F{white}[%3~] %F{red}%#-->%F{yellow} "

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

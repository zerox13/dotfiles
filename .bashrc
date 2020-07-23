
#-----< Update the alias >------
if [ -f ~/.aliases ]; then
. ~/.aliases
fi

#-----< Update profile >------
if [ -f ~/.profile ]; then
. ~/.profile
fi

#-------> My Function <----------
if [ -f ~/.functions ]; then
. ~/.functions
fi

#here should every computer write its own conf
if [ -f ~/.self ]; then
. ~/.self
fi


PROMPT_COMMAND='source ~/.bashrc'

## THis is a comment


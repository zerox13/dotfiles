#PS1='[\u@\h \W]\$ '
#-------< My bash shit >-------
red=$(tput setaf 160);
yellow=$(tput setaf 120);
green=$(tput setaf 047);
white=$(tput setaf 87);
blod=$(tput bold);
#reset=$(tput sgr0);
reset=$(tput setaf 013);

PS1="\[${yellow}\]\A";
PS1+="\[${red}\] Abbe";
PS1+="\[${white}\]@";
PS1+="\[${yellow}\]\h";
PS1+="\[${green}\][\W]";
PS1+="\[${white}\] \$";
PS1+="\[${green}\]---> ";
PS1+="\[${reset}\]";

#------------
#yellow=$(tput setaf 228);
#green=$(tput setaf 72);
#white=$(tput setaf 15);
#blod=$(tput bold);
#reset=$(tput sgr0);

#PS1="\[${orange}\]\A ";
#PS1+="\[${yellow}\]\u";
#PS1+="\[${white}\]@";
#PS1+="\[${green}\][\W]";
#PS1+="\[${white}\] \$";
#PS1+="\[${green}\]--> ";
#PS1+="\[${reset}\]";

export PS1;

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

eval "$(starship init bash)"
## THis is a comment


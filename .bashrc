#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

#Lib path
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:~/usr/local/lib/"

#-----< Update the alias >------
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

PROMPT_COMMAND='source ~/.bashrc'

#-------> My Functions <----------
#To mount itchy to my arch
function uu1 () {
	sshfs dv18aar@itchy.cs.umu.se:/home/"$@" ~/Remote

}
function uu0 () {
	sshfs dv18aar@itchy.cs.umu.se:/Home/staff"$@" ~/Remote
}

function print(){
	scrot -u '%Y%m%d_%H%M%S.png' -e 'mv $f ~/Desktop'
}
#------ My alias ------


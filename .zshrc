# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e ~/.local/share/zsh/manjaro-zsh-config ]]; then
  source ~/.local/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e ~/.local/share/zsh/manjaro-zsh-prompt ]]; then
  source ~/.local/share/zsh/manjaro-zsh-prompt
fi

#-------> My Function <----------
if [ -f ~/.functions ]; then
. ~/.functions
fi

# Use manjaro zsh prompt
if [[ -e .profile ]]; then
  source .profile
fi

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


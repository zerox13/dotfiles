![](https://i.imgur.com/AKIRizD.png)

# Dotfiles
Like all the other nerds, this is my dotfiles repo.. 

i Use it to manage all the dotfiles in my machines..

You can either use it as a bare clone in you $HOME or as a normal clone with 
files links and so.. There is a setup.sh that helps to setup the links, but it is not perfect thou.

## To use as a bare clone
The idea is to keep the dotfiles where they are by making the home directory as
a work-tree to the dotfiles git repo. In other words, we will have a bare clone of the repo in our home directory, where the whole home dir is the work-tree.  

To make life easier, we will have an alias specilly for the dotfile git managements (NOTE: this should be in an .alias or .zshrc)

```zsh
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

For more info read this article.
[article](https://www.atlassian.com/git/tutorials/dotfiles)

## To use as normal clone clone
For this we can just clone the repo as a normal repo, and use the setup.sh
to create file-links.. 

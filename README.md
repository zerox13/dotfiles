![](https://i.imgur.com/AKIRizD.png)

# Dotfiles
A repo to manage my dotfiles across all my machines. 

To use it you can simply fork the repo, and try to edit it so it works for you

## Dotfiles included
* **.vimrc**  Config of the vim editor
* **.tmux.conf**
* **.bashrc** 
* **.zhshrc**

The below files are some kinde of help files to the the above files. just to keep everything organized
* **.functions** Here you find all the shell functions
* **.aliases** As the names says, aliasesssss!


## Setup
To setup everything correctly, run the setup.sh script, which will make hard links to the files in the home dir, you can make the links symbolic by modifing the setup.sh if you wish to.
```bash
./setup.sh
```
You might also need to give the setup.sh script execute permission before running,
```bash
chmod +x setup.sh
```

**OBS** DON'T  modify the dotfiles in your home directory. Instead modify the files in the repo folder and run the setup script again. 
This is important if you want every thing syncd with the repo


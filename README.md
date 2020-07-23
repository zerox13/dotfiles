## TODO: 
* Add files form the server and other machines

# Dotfiles
A repo to manage my dotfiles. 

This README file is made to make it easier for you if you wish to use my config.

## Dotfiles included
* **.vimrc** 
* **.tmux.conf**
* **.bashrc** 
* **.zhshrc**

## Setup
To setup everything correctly, run the setup.sh script, which will make hard links to the files in the home dir, you can make the links symbolic by modifing the setup.sh
```bash
./setup.sh
```
You might also need to give the setup.sh script execute permission before running,
```bash
chmod +x setup.sh
```

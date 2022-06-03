![](https://i.imgur.com/AKIRizD.png)

# Dotfiles

## To use as a bare clone

Use this alias for now,
```zsh
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Run this snippet to do the job.
```
git clone --bare git@github.com:zerox13/dotfiles.git $HOME/.dotfiles
function config {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```

Want to understand what is going on read this article.
[article](https://www.atlassian.com/git/tutorials/dotfiles)

## To use as normal clone clone
For this we can just clone the repo as a normal repo, and use the setup.sh
to create file-links.. 

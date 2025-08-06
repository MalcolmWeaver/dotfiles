To clone properly, run the following:

`git clone --bare https://github.com/MalcolmWeaver/dotfiles.git $HOME/dotfiles`

Then run the following to clone the actual content:

```
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config checkout
```

# dotfiles

## Setup SSH keys

Follow [Github's SSH guide](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

## Install brew + dotfiles

To get setup from scratch, run this command in the Terminal:

`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && git clone git@github.com:ItsJonQ/dotfiles.git ~/dotfiles && cd ~/dotfiles && sh install.sh`

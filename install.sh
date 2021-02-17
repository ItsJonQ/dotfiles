# install.sh
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================
# Installs and setups all the things!

# Ask for the administrator password upfront
sudo -v

sh $HOME/dotfiles/config/brew.sh
# sh $HOME/dotfiles/config/cask.sh
sh $HOME/dotfiles/config/osx.sh
# sh $HOME/dotfiles/config/atom.sh
# sh $HOME/dotfiles/config/node.sh
# sh $HOME/dotfiles/config/ruby.sh
# sh $HOME/dotfiles/config/vagrant.sh

sh $HOME/dotfiles/bootstrap.sh

# sh $HOME/dotfiles/config/fonts.sh

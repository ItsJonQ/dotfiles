# install.sh
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================
# Installs and setups all the things!

# Ask for the administrator password upfront
sudo -v

sh config/brew.sh
sh config/cask.sh
sh config/osx.sh
sh config/atom.sh
sh config/node.sh
sh config/ruby.sh
sh config/vagrant.sh

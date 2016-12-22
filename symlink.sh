# symlink.sh
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================
# Symlink files

ln -sf $HOME/dotfiles/.atom/config.cson $HOME/.atom/config.cson
ln -sf $HOME/Drive/Config/.zprofile $HOME/.zprofile

echo Symlinked dotfiles.

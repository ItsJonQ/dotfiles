# symlink.sh
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================
# Symlink files

# Symlink atom files
for file in $HOME/dotfiles/.atom/*; do
  if [[ -f $file ]]; then
    F=`basename "$file"`
    ln -sf $HOME/dotfiles/.atom/$F $HOME/.atom/$F
  fi
done

ln -sf $HOME/dotfiles/.config/karabiner/karabiner.json $HOME/.config/karabiner/karabiner.json
# ln -sf $HOME/dotfiles/vim/after $HOME/.vim/after
ln -sf $HOME/dotfiles/.nvimrc $HOME/.config/nvim/init.vim

ln -sf $HOME/Drive/Config/.aws $HOME/.aws
ln -sf $HOME/Drive/Config/.zprofile $HOME/.zprofile

ln -sf $HOME/dotfiles/.vscode/settings.json $HOME/.vscode/settings.json

echo Symlinked dotfiles.

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
ln -sf $HOME/dotfiles/.config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
ln -sf $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -sf $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -sf $HOME/dotfiles/vim/after $HOME/.vim/
# ln -sf $HOME/dotfiles/.nvimrc $HOME/.config/nvim/init.vim

ln -sf $HOME/Drive/Config/.npmrc $HOME/.npmrc

# ln -sf $HOME/Drive/Config/.aws $HOME
ln -sf $HOME/Drive/Config/.zprofile $HOME/.zprofile

ln -sf $HOME/Drive/Config/.vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
ln -sf $HOME/Drive/Config/.vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json

echo Symlinked dotfiles.

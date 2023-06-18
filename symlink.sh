# symlink.sh
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================
# Symlink files

# Create directories
mkdir -p $HOME/.atom
mkdir -p $HOME/.config
mkdir -p $HOME/.config/karabiner
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.hammerspoon

# Symlink atom files
for file in $HOME/dotfiles/.atom/*; do
  if [[ -f $file ]]; then
    F=`basename "$file"`
    ln -sf $HOME/dotfiles/.atom/$F $HOME/.atom/$F
  fi
done

# Symlink hammerspoon files
for file in $HOME/dotfiles/.hammerspoon/*; do
  if [[ -f $file ]]; then
    F=`basename "$file"`
    ln -sf $HOME/dotfiles/.hammerspoon/$F $HOME/.hammerspoon/$F
  fi
done

ln -sf $HOME/dotfiles/.config/karabiner/karabiner.json $HOME/.config/karabiner/karabiner.json
# ln -sf $HOME/dotfiles/.config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
ln -sf $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -sf $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -sf $HOME/dotfiles/vim/after $HOME/.vim/
ln -sf $HOME/dotfiles/.config/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf $HOME/dotfiles/.config/nvim/coc-settings.json $HOME/.config/nvim/coc-settings.json

ln -sf $HOME/Drive/04\ System/config/.base16 $HOME/.base16

ln -sf $HOME/Drive/04\ System/config/.npmrc $HOME/.npmrc

ln -sf $HOME/Drive/04\ System/config/.zprofile $HOME/.zprofile

ln -sf $HOME/Drive/04\ System/config/.vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
ln -sf $HOME/Drive/04\ System/config/.vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json

ln -sf $HOME/Drive/04\ System/config/.vim/coc-settings.json $HOME/.vim/coc-settings.json

echo Symlinked dotfiles.

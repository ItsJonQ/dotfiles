# .zshrc
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# Brew
export PATH="/usr/local/sbin:$PATH"

# zsh Configs
DOTFILES_ZSH="$HOME/dotfiles/zsh"
if [ -d "$DOTFILES_ZSH" ]; then
  for file in $DOTFILES_ZSH/*; do
    source $file
  done
fi

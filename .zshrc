# .zshrc
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================

# zsh Configs
DOTFILES_ZSH="$HOME/dotfiles/zsh"
if [ -d "$DOTFILES_ZSH" ]; then
  for file in $DOTFILES_ZSH/*; do
    source $file
  done
fi

export PATH="$HOME/.local/bin:$PATH"
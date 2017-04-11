# .zshrc
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================

# zsh Configs
DOTFILES_ZSH="$HOME/dotfiles/zsh"

source $HOME/.zprofile
source $DOTFILES_ZSH/aliases
source $DOTFILES_ZSH/colors
source $DOTFILES_ZSH/editor
source $DOTFILES_ZSH/git
source $DOTFILES_ZSH/path
source $DOTFILES_ZSH/prompt
source $DOTFILES_ZSH/shell

# if [ -d "$DOTFILES_ZSH" ]; then
#   for file in $DOTFILES_ZSH/*; do
#     source $file
#   done
# fi

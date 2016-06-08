# .bashrc
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================
source ~/dotfiles/zsh/aliases
source ~/dotfiles/zsh/colors
source ~/dotfiles/zsh/editor
source ~/dotfiles/zsh/path
source ~/dotfiles/zsh/prompt

for file in ~/dotfiles/bash/*; do
  source "$file";
done;

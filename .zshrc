# .zshrc
# Author: Q <itsjonq@gmail.com>
# Source: https://github.com/ItsJonQ/dotfiles
# =============================================================================

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh


# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"


# Vim as default editor
# export EDITOR="/usr/local/bin/vim"
export VISUAL=vim
export EDITOR="$VISUAL"


# Prompt
autoload -U colors
colors


# .zsh Configs
DOTFILES_ZSH="$HOME/dotfiles/.zsh"
if [ -d "$DOTFILES_ZSH" ]; then
  for file in $DOTFILES_ZSH/*; do
    source $file
  done
fi


# rbenv
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

# Travis CI
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh


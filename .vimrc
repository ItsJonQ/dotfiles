" .vimrc
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

" Reset
set nocompatible              " be iMproved, required
filetype off                  " required
set nocursorline              " removes cursorline

let $DOTFILES_VIM = $HOME.'/dotfiles/vim'

" Vundle
source $DOTFILES_VIM/vundle.vim

" Configs
for f in split(glob($DOTFILES_VIM.'/config/**/*.vim'), '\n')
  exe 'source' f
endfor

" Override Configs
source $DOTFILES_VIM/override/config.vim

" Config :: Vundle
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

" Setup start {{{
"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" }}}
" Enhancements {{{

" Plug 'ChesleyTan/wordCount.vim'
Plug 'Konfekt/FastFold'
Plug 'VundleVim/Vundle.vim'
" Plug 'Yggdroot/indentLine'
Plug 'ap/vim-buftabline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
" Plug 'godlygeek/tabular'
" Plug 'jeetsukumaran/vim-filebeagle'
" Plug 'junegunn/vim-easy-align'
" Plug 'kshenoy/vim-signature'
" Plug 'mattn/emmet-vim'
Plug 'mileszs/ack.vim'
" Plug 'mhinz/vim-startify'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" Plug 'reedes/vim-pencil'
" Plug 'rking/ag.vim'
" Plug 'sbdchd/neoformat'
Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-unimpaired'
" Plug 'tpope/vim-vinegar'
Plug 'manasthakur/vim-vinegar'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/BufOnly.vim' " Deletes all other buffers
" Plug 'vim-syntastic/syntastic'
" Plug 'vim-scripts/JavaScript-Indent'
" Plug 'wincent/loupe'
" Plug 'wincent/terminus'
" Plug 'w0rp/ale'
" Plug 'zerowidth/vim-copy-as-rtf'

" }}}
" Themes {{{

Plug 'ItsJonQ/base16-vim'
" Plug 'ItsJonQ/onedark.vim'
" Plug 'ItsJonQ/vim-airline-themes'
" Plug 'altercation/vim-colors-solarized'
" Plug 'chriskempson/base16-vim'
" Plug 'joshdick/onedark.vim'
" Plug 'joshdick/airline-onedark.vim'
" Plug 'pbrisbin/vim-colors-off'
" Plug 'sbdchd/neoformat'
" Plug 'rakr/vim-one'
" Plug 'tomasr/molokai'
" Plug 'w0ng/vim-hybrid'

" }}}
" Syntax highlighting {{{"{{{
" Plug 'StanAngeloff/php.vim'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'evidens/vim-twig'
" Plug 'leafgarland/typescript-vim'
" Plug 'mustache/vim-mustache-handlebars'
" Plug 'plasticboy/vim-markdown'
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'


" }}}"}}}


" Editor Config
" Plug 'editorconfig/editorconfig-vim'

call plug#end()

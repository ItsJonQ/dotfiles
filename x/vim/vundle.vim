" Config :: Vundle
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

" Setup start {{{

if has('nvim')
  let s:editor_root=expand("~/.nvim")
else
  let s:editor_root=expand("~/.vim")
endif

set rtp+=~/.vim/bundle/Vundle.vim

if has('nvim')
  call vundle#begin("~/.config/nvim/bundle")
else
  call vundle#begin()
endif

" }}}
" Enhancements {{{

" Plugin 'ChesleyTan/wordCount.vim'
Plugin 'Konfekt/FastFold'
Plugin 'VundleVim/Vundle.vim'
" Plugin 'Yggdroot/indentLine'
Plugin 'ap/vim-buftabline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
" Plugin 'godlygeek/tabular'
" Plugin 'jeetsukumaran/vim-filebeagle'
" Plugin 'junegunn/vim-easy-align'
" Plugin 'kshenoy/vim-signature'
" Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
" Plugin 'mhinz/vim-startify'
Plugin 'prettier/vim-prettier'
" Plugin 'reedes/vim-pencil'
" Plugin 'rking/ag.vim'
" Plugin 'sbdchd/neoformat'
Plugin 'tpope/vim-commentary'
" Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-unimpaired'
" Plugin 'tpope/vim-vinegar'
Plugin 'manasthakur/vim-vinegar'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/BufOnly.vim' " Deletes all other buffers
" Plugin 'vim-syntastic/syntastic'
" Plugin 'vim-scripts/JavaScript-Indent'
" Plugin 'wincent/loupe'
" Plugin 'wincent/terminus'
" Plugin 'w0rp/ale'
" Plugin 'zerowidth/vim-copy-as-rtf'

" }}}
" Themes {{{

Plugin 'ItsJonQ/base16-vim'
" Plugin 'ItsJonQ/onedark.vim'
" Plugin 'ItsJonQ/vim-airline-themes'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'chriskempson/base16-vim'
" Plugin 'joshdick/onedark.vim'
" Plugin 'joshdick/airline-onedark.vim'
" Plugin 'pbrisbin/vim-colors-off'
" Plugin 'sbdchd/neoformat'
" Plugin 'rakr/vim-one'
" Plugin 'tomasr/molokai'
" Plugin 'w0ng/vim-hybrid'

" }}}
" Syntax highlighting {{{"{{{
" Plugin 'StanAngeloff/php.vim'
" Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'evidens/vim-twig'
" Plugin 'leafgarland/typescript-vim'
" Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'pangloss/vim-javascript'
" Plugin 'mxw/vim-jsx'


" }}}"}}}


" Editor Config
" Plugin 'editorconfig/editorconfig-vim'


" Setup end {{{

call vundle#end()            " required
filetype plugin indent on    " required

" }}}

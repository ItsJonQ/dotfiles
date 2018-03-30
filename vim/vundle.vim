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
Plugin 'junegunn/vim-easy-align'
" Plugin 'junegunn/goyo.vim'
" Plugin 'kshenoy/vim-signature'
" Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
" Plugin 'mitermayer/vim-prettier'
" Plugin 'mhinz/vim-startify'
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
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/BufOnly.vim' " Deletes all other buffers
" Plugin 'vim-syntastic/syntastic'
" Plugin 'vim-scripts/JavaScript-Indent'
" Plugin 'wincent/loupe'
" Plugin 'wincent/terminus'
Plugin 'w0rp/ale'
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
" Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plugin 'StanAngeloff/php.vim'
Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'cespare/vim-toml'
Plugin 'evidens/vim-twig'
" Plugin 'hail2u/vim-css3-syntax'
" Plugin 'groenewege/vim-less'
Plugin 'leafgarland/typescript-vim'
Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'othree/html5.vim'
Plugin 'plasticboy/vim-markdown'
" Javascript syntax
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'bigfish/vim-js-context-coloring'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" Plugin 'maxmellon/vim-jsx-pretty'
" Plugin 'othree/javascript-libraries-syntax.vim'
" Plugin 'othree/yajs.vim'

" }}}"}}}


" Editor Config
" Plugin 'editorconfig/editorconfig-vim'


" Setup end {{{

call vundle#end()            " required
filetype plugin indent on    " required

" }}}

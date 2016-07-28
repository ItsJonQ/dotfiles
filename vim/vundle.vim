" Config :: Vundle
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

" Setup start {{{

" if has('nvim')
"   let s:editor_root=expand("~/.nvim")
" else
"   let s:editor_root=expand("~/.vim")
" endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" }}}
" Enhancements {{{

Plugin 'Konfekt/FastFold'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'
" Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
" Plugin 'godlygeek/tabular'
" Plugin 'kshenoy/vim-signature'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
" Plugin 'mhinz/vim-startify'
" Plugin 'rking/ag.vim'
" Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/BufOnly.vim'
" Plugin 'vim-scripts/JavaScript-Indent'
" Plugin 'wincent/loupe'
Plugin 'wincent/terminus'

" }}}
" Themes {{{

Plugin 'ItsJonQ/base16-vim'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'chriskempson/base16-vim'
" Plugin 'joshdick/onedark.vim'
Plugin 'joshdick/airline-onedark.vim'
" Plugin 'pbrisbin/vim-colors-off'
" Plugin 'tomasr/molokai'
" Plugin 'w0ng/vim-hybrid'

" }}}
" Syntax highlighting {{{"{{{
" Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plugin 'StanAngeloff/php.vim'
Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'cespare/vim-toml'
Plugin 'evidens/vim-twig'
" Plugin 'groenewege/vim-less'
Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'othree/html5.vim'
Plugin 'plasticboy/vim-markdown'
" Javascript syntax
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'bigfish/vim-js-context-coloring'
" Plugin 'mxw/vim-jsx'
" Plugin 'othree/javascript-libraries-syntax.vim'
" Plugin 'othree/yajs.vim'
" Plugin 'pangloss/vim-javascript'

" }}}"}}}
" Setup end {{{

call vundle#end()            " required
filetype plugin indent on    " required

" }}}

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

Plug 'Konfekt/FastFold'
Plug 'ap/vim-buftabline'
" Plug 'ervandew/supertab'
" Plug 'itsjonq/vim-vinegar'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" LSP for Neovim
" @see https://jose-elias-alvarez.medium.com/configuring-neovims-lsp-client-for-typescript-development-5789d58ea9c
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

" Plug 'justinmk/vim-dirvish'
"
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

" Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-emmet', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
"
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
" Plug 'manasthakur/vim-vinegar'
Plug 'vim-scripts/BufOnly.vim' " Deletes all other buffers
" Plug 'w0rp/ale'

" }}}
" Themes {{{

Plug 'ItsJonQ/base16-vim'

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
Plug 'sheerun/vim-polyglot'

" }}}"}}}

call plug#end()

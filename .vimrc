" .vimrc
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================
" vim:fdm=marker
" Above setting enables .vimrc folding

" Normalize =============================================================== {{{

" Reset {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" }}}

" }}}
" Vundle ================================================================== {{{

" Setup start {{{

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" }}}
" Enhancements {{{

Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'kshenoy/vim-signature'
Plugin 'mattn/emmet-vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'

" }}}
" Themes {{{

Plugin 'joshdick/onedark.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}

" }}}
" Syntax highlighting {{{
Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plugin 'StanAngeloff/php.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'evidens/vim-twig'
Plugin 'groenewege/vim-less'
Plugin 'mustache/vim-mustache-handlebars'

" }}}
" Setup end {{{

call vundle#end()            " required
filetype plugin indent on    " required

" }}}

" }}}
" Basic options =========================================================== {{{

" Airline {{{

set laststatus=2

" }}}
" Autocomplete {{{

set wildmenu

" }}}
" Backspace {{{

set backspace=2

" }}}
" Buffer {{{

set hidden

" }}}
" Directories {{{

set directory=~/.vim/tmp//
set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//

" }}}
" File types {{{

au BufRead,BufNewFile *.tpl set filetype=html

" }}}
" Folding {{{

set fdc=1
set fdm=marker
set foldenable
set foldlevelstart=10
set foldmethod=indent
set foldnestmax=10

" }}}
" Indentation {{{

let g:gitgutter_sign_column_always = 1
let g:indentLine_leadingSpaceEnabled = 1
set autoindent
set colorcolumn=80
set copyindent
set expandtab
set list
set listchars=tab:▸\ ,eol:¬,trail:·,extends:>,precedes:<
set number
set relativenumber
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

" }}}
" Mouse {{{

set mouse=a

" }}}
" Regex {{{

set re=1

" }}}
" Searching {{{

set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase

" }}}
" Sounds {{{

set visualbell
set noerrorbells

" }}}
" Swap {{{

set nobackup
set noswapfile

" }}}
" Window {{{

set title

" }}}
" Undo/Redo {{{

set history=1000
set undolevels=1000

" }}}

" }}}
" Appearance ============================================================== {{{

" Basic {{{

" set term=xterm-256color

" Syntax / color
syntax on
set t_Co=256

" }}}
" Color scheme {{{

color onedark

" MacVim
if has("gui_running")
  syntax on
  color onedark
  set columns=80 lines=40
  set gfn=*
  set guifont=Monaco:h12
else
  syntax off
  " set background=dark
  hi ColorColumn ctermbg=233
  hi CursorLine ctermbg=233
  hi FoldColumn ctermfg=242
  hi LineNr ctermbg=None
  hi Normal ctermbg=None

  " Ubuntu colors
  " hi ColorColumn ctermbg=53
  " hi CursorLine ctermbg=53
  " hi LineNr ctermfg=241
endif

" }}}
" Cursor / highlighting {{{

set cursorline
set showmatch

" }}}
" Typography {{{

set linespace=5

" }}}

" }}}
" Keyboard shortcuts ====================================================== {{{

" Basic {{{

" vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Leader
let mapleader = "\<Space>"

" Reset 
nnoremap q <Nop>

" }}}
" Arrow keys {{{

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" }}}
" Better movement: Arrows {{{

nnoremap j gj
nnoremap k gk
nnoremap J }
nnoremap <c-j> }
vnoremap J }
nnoremap K {
nnoremap <c-k> {
vnoremap K {

" }}}
" Better movement: Words {{{

nnoremap B ^
vnoremap B ^
nnoremap E $
vnoremap E $
nnoremap W $
vnoremap W $

" }}}
" Commenting {{{

nmap <leader>c gcc
vmap <leader>c gc

" }}}
" Copy / paste {{{

vmap <Leader>y "+y
nmap <Leader>p "+pg`]
nmap <Leader>P "+Pg`]
vmap <Leader>p "+pg`]
vmap <Leader>P "+Pg`]

" }}}
" Delete {{{

nnoremap <leader>dd cc<esc>
nnoremap <leader>ds :call <SID>StripTrailingWhitespaces()<CR>

" }}}
" Escape {{{

imap jj <Esc>
imap kk <Esc>

" }}}
" File explorer {{{

command E Ex
nnoremap <c-a>n :vs .<cr>
vnoremap <c-a>n :vs .<cr>
nnoremap <c-a>N :sp .<cr>
vnoremap <c-a>N :sp .<cr>

" }}}
" Formatting {{{

nmap Q gqap
vmap Q gq

" }}}
" Indenting {{{

nmap T :retab<cr>
vmap T :retab<cr>
nmap > >>
vmap > >gv
nmap < <<
vmap < <gv

" }}}
" Movement {{{

nmap <leader>J :m +1<cr>
nmap <leader>K :m -2<cr>

" }}}
" New lines {{{

nmap <leader>n o<esc>
nmap <leader>N O<esc>

" }}}
" Positioning {{{

nnoremap zj zt8<c-y>

" }}}
" Search {{{

nmap <silent> <leader>es :nohl<cr>
nmap <silent> <leader>hl :nohl<cr>
nmap <leader>f /
vmap <leader>f /
nnoremap <c-d> *N

" }}}
" Selecting {{{

nmap <leader>A ggVG
nmap <leader>sa ggVG
noremap <leader>sp `[v`]
vnoremap u <nop>

" }}}
" Sort {{{
vmap <leader>o :sort<cr>
vmap gss :sort<cr>
nmap gsip vip:sort<cr>

" }}}
" Plugins {{{

" Emmet {{{

imap <c-a>e <c-y>,

" }}}
" GitGutter {{{

let g:gitgutter_map_keys = 0

" }}}
" Tabularize {{{

" nmap gte :Tabularize /=/<cr>
" vmap gte :Tabularize /=/<cr>
" nmap gtc :Tabularize /:/<cr>
" vmap gtc :Tabularize /:/<cr>

" }}}
" Functions {{{

" function :: Delete trailing white space
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" }}}

" }}}

" }}}
" Plugin settings ========================================================= {{{

" indentLine {{{

let g:indentLine_leadingSpaceChar='.'
let g:indentLine_char='.'
let g:indentLine_color_term = 237

" }}}
" ctrl-p {{{

set runtimepath^=~/.vim/bundle/ctrlp.vim

" make ctrl-p use silver searcher!
" source : https://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/

let g:ctrlp_use_caching = 0
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'acceptselection("e")': ['<space>', '<cr>', '<2-leftmouse>'],
    \ }
endif

" }}}
" silver searcher {{{
if executable('ag')
  " note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
  nnoremap <leader>a :Ag
endif

" optimization
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/bower_components,*/node_modules,*/.vagrant,*/.github,*/.asset-cache,*/.grunt,*/tmp,*/.tmp,_site,dev,tmp,.publish,*/.grunt-tmp,*/site/css

" }}}

" }}}

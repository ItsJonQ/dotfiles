set nocompatible              " be iMproved, required
filetype off                  " required

" =============================================
" Vundle
" =============================================

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Enhancements
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" Themes
Plugin 'chriskempson/base16-vim'
Plugin 'joshdick/onedark.vim'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'mhartington/oceanic-next'


" Syntax highlighting
Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plugin 'StanAngeloff/php.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'evidens/vim-twig'
Plugin 'groenewege/vim-less'
Plugin 'mustache/vim-mustache-handlebars'


call vundle#end()            " required
filetype plugin indent on    " required


" =============================================


" Vim Directories
set directory=~/.vim/tmp//
set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//


" =============================================
" VIM behaviour
" =============================================

" Hides buffers instead of closing them
set hidden

" Searching
set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase

" Undo/Redo
set history=1000
set undolevels=1000

" Terminal/Window
set title

" Sounds
set visualbell
set noerrorbells

" Disabling swap
set nobackup
set noswapfile

" Autocomplete for command menu
set wildmenu

" Folding
set foldenable
set foldlevelstart=10
set foldmethod=indent
set foldnestmax=10


" =============================================
" Look and feel
" =============================================

" Theme
" set term=xterm-256color
syntax enable
syntax on

set t_Co=256
color onedark

" MacVim
if has("gui_running")
  color onedark
  set columns=80 lines=40
  set gfn=*
  set guifont=Monaco:h12
else
  " set background=dark
  hi ColorColumn ctermbg=233
  hi CursorLine ctermbg=233
  hi LineNr ctermbg=None
  hi Normal ctermbg=None
endif


" Cursor / highlighting
set cursorline
set showmatch

" Indentation
set autoindent
set copyindent
set expandtab
set number
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

" Extra indentation
let g:gitgutter_sign_column_always = 1
let g:indentLine_leadingSpaceEnabled = 1
set colorcolumn=80
set list
set listchars=tab:▸\ ,eol:¬,trail:·,extends:>,precedes:<
set relativenumber

" Enable mouse
set mouse=a

" Typography
set linespace=5


" =============================================
" Keyboard remaps
" =============================================

" Turn of Gitgutter keys
let g:gitgutter_map_keys = 0

" Leader
let mapleader = "\<Space>"

" Reset
nnoremap q <Nop>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :q!<cr>
imap jj <Esc>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Saving / Quiting
nnoremap <leader>w :w<CR>
nnoremap <leader>W :wq<CR>

" Doubletap / Selecting
nmap <leader><leader> V
vmap <leader><leader> <Esc>
nmap <leader>A ggVG
nmap <leader>sa ggVG
noremap <leader>sp `[v`]

" searching
nmap <leader>f /
vmap <leader>f /

" copy / paste
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" refresh
nmap <leader>R :e<cr>

" commenting
nmap <leader>/ gcc
vmap <leader>/ gc
nmap <leader>c gcc
vmap <leader>c gc

" folding
nnoremap zz za

" indenting
nmap T :retab<cr>
vmap T :retab<cr>
nmap > >>
vmap > ><cr>gv
nmap < <<
vmap < <<cr>gv

" sort
vmap <leader>o :sort<cr>

" multiple cursors
let g:multi_cursor_quit_key='<c-c>'
nnoremap <c-c> :call multiple_cursors#quit()<cr>

" formatting
nmap Q gqap
vmap Q gq

" disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" better arrow key movement
nnoremap j gj
nnoremap k gk
nnoremap J }
nnoremap K {

" better movement
nnoremap B ^
nnoremap E $
nnoremap W $

" better window navigation
map <silent> <leader>h :wincmd h<cr>
map <silent> <leader>j :wincmd j<cr>
map <silent> <leader>k :wincmd k<cr>
map <silent> <leader>l :wincmd l<cr>

" clear search
nmap <silent> <leader>es :nohl<cr>

" emmet
imap <c-y><leader> <c-y>,

" delete spaces
nnoremap <leader>DD :call <SID>StripTrailingWhitespaces()<CR>
nnoremap <leader>DB :g/^$/d<cr>

" functions
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

" =============================================
" Plugin enhancement
" =============================================

" ctrl-p
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

" silver searcher
if executable('ag')
  " note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
  nnoremap <leader>a :Ag
endif

" optimization
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/bower_components,*/node_modules,*/.vagrant,*/.github,*/.asset-cache,*/.grunt,*/tmp,*/.tmp,_site,dev,tmp,.publish,*/.grunt-tmp,*/site/css


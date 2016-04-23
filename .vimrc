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
Plugin 'godlygeek/tabular'
Plugin 'kshenoy/vim-signature'
Plugin 'mattn/emmet-vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" Themes
Plugin 'chriskempson/base16-vim'
Plugin 'fxn/vim-monochrome'
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

" File types
au BufRead,BufNewFile *.tpl set filetype=html


" =============================================
" Look and feel
" =============================================

" Theme
" set term=xterm-256color

set t_Co=256
color onedark

" MacVim
if has("gui_running")
  color onedark
  set columns=80 lines=40
  set gfn=*
  set guifont=Roboto\ Mono:h12
else
  " set background=dark
  hi ColorColumn ctermbg=233
  hi CursorLine ctermbg=233
  hi LineNr ctermbg=None
  hi Normal ctermbg=None
endif

syntax enable
syntax on
" syntax off

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
imap kk <Esc>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Saving / Quiting
nnoremap <leader>w :w<CR>
nnoremap <leader>W :wq<CR>

" Doubletap / Selecting
" nmap <leader><leader> V
nmap <leader><leader> <Esc>
" vmap <leader><leader> <Esc>
nmap <leader>A ggVG
nmap <leader>sa ggVG
noremap <leader>sp `[v`]
vnoremap u <nop>

" searching
nmap <leader>f /
vmap <leader>f /
nnoremap <c-d> *N

" copy / paste
vmap <Leader>y "+y
nmap <Leader>p "+pg`]
nmap <Leader>P "+Pg`]
vmap <Leader>p "+pg`]
vmap <Leader>P "+Pg`]

" moving
nmap <leader>J :m +1<cr>
nmap <leader>K :m -2<cr>

" delete
nmap <leader>dw diW

" refresh
nmap <leader>R :e<cr>

" commenting
nmap <leader>/ gcc
vmap <leader>/ gc
nmap <leader>c gcc
vmap <leader>c gc

" marks
nmap <leader>g `
nmap <leader>] ]`
nmap <leader>[ [`
nmap <leader>M m/
nmap <c-m> `

" folding
nnoremap zf za

" positioning
nnoremap zj zt8<c-y>

" indenting
nmap T :retab<cr>
vmap T :retab<cr>
nmap > >>
vmap > >gv
nmap < <<
vmap < <gv

" new lines
nmap <leader>n o<esc>
nmap <leader>N O<esc>

" sort
vmap <leader>o :sort<cr>
vmap gss :sort<cr>
nmap gsip vip:sort<cr>

" multiple cursors
let g:multi_cursor_quit_key='<c-c>'
nnoremap <c-c> <silent> :call multiple_cursors#quit()<cr>

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
nnoremap <c-j> }
vnoremap J }
nnoremap K {
nnoremap <c-k> {
vnoremap K {

" better word movement
nnoremap B ^
vnoremap B ^
nnoremap E $
vnoremap E $
nnoremap W $
vnoremap W $

" better window navigation
" map <silent> <leader>h :wincmd h<cr>
" map <silent> <leader>j :wincmd j<cr>
" map <silent> <leader>k :wincmd k<cr>
" map <silent> <leader>l :wincmd l<cr>

" clear search
nmap <silent> <leader>es :nohl<cr>

" emmet
imap <c-a><leader> <c-y>,

" tabularize
nmap gte :Tabularize /=/<cr>
vmap gte :Tabularize /=/<cr>
nmap gtc :Tabularize /:/<cr>
vmap gtc :Tabularize /:/<cr>


" nerdTre
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeHijackNetrw=0
map <c-a>n :NERDTreeToggle<CR>

" delete spaces
nnoremap <leader>DD cc<esc>
nnoremap gdd cc<esc>
nnoremap <leader>DS :call <SID>StripTrailingWhitespaces()<CR>
nnoremap gds :call <SID>StripTrailingWhitespaces()<CR>

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

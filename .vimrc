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
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'

" }}}
" Themes {{{

Plugin 'joshdick/onedark.vim'
Plugin 'mhartington/oceanic-next'
Plugin 'pbrisbin/vim-colors-off'
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
" Apps {{{

" Plugin 'mrtazz/simplenote.vim'

" }}}
" Setup end {{{

call vundle#end()            " required
filetype plugin indent on    " required

" }}}

" }}}
" Basic options =========================================================== {{{

" Airline {{{

set laststatus=2
let g:airline_theme='powerlineish'
set cmdheight=1

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

" MacVim
if has("gui_running")

  syntax on
  color onedark

  set columns=80 lines=40
  set gfn=*
  set guifont=Monaco:h12

else

  syntax off
  color onedark
  color off

  set background=light

  " Background based tweaks
  if(&background == "light")

    let g:indentLine_color_term = 251
    hi ColorColumn ctermbg=254
    hi CursorLine ctermbg=254
    hi FoldColumn ctermfg=248
    hi LineNr ctermbg=None
    hi Normal ctermbg=None
    hi Pmenu ctermbg=254 ctermfg=239
    hi PmenuSel ctermbg=220 ctermfg=239
    hi Search ctermbg=228 ctermfg=234
    hi IncSearch ctermbg=220 ctermfg=234

  elseif(&background == "dark")

  else

    let g:indentLine_color_term = 237

    hi ColorColumn ctermbg=233
    hi CursorLine ctermbg=233
    hi FoldColumn ctermfg=242
    hi LineNr ctermbg=None
    hi Normal ctermbg=None

  endif

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

" Leader
let mapleader = "\<Space>"

" vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Reset
nnoremap q <Nop>

" }}}
" Arrow keys {{{

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" }}}
" Buffers {{{

nnoremap gb :ls<cr>
nnoremap B :ls<cr>
nnoremap <c-b> :ls<cr>
vnoremap <c-b> :ls<cr>

"}}}
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

nnoremap H ^
nnoremap L $

" }}}
" Commenting {{{

nnoremap <silent> <leader>c :Commentary<cr>
vnoremap <silent> <leader>c :Commentary<cr>

" }}}
" Copy / paste {{{

vnoremap <Leader>y "+y
nnoremap <Leader>p "+pg`]
vnoremap <Leader>P "+Pg`]
nnoremap <Leader>p "+pg`]
vnoremap <Leader>P "+Pg`]

" }}}
" Delete {{{

nnoremap D cc<esc>
vnoremap <leader>dd cc<esc>
nnoremap <leader>ds :call <SID>StripTrailingWhitespaces()<CR>

" }}}
" Escape {{{

" imap jj <Esc>
" imap kk <Esc>

" }}}
" File explorer {{{

command E Ex
nnoremap <c-a>n :vs .<cr>
vnoremap <c-a>n :vs .<cr>
nnoremap <c-a>N :sp .<cr>
vnoremap <c-a>N :sp .<cr>
nnoremap <c-e> :Ex<space>
vnoremap <c-e> :Ex<space>

" }}}
" Folding {{{

nnoremap <space><space> za
nnoremap zl zMzr
nnoremap zf mzzMzvzz
nnoremap zO zczO

" }}}
" Formatting {{{

nnoremap Q gqap
vnoremap Q gq

" }}}
" Indenting {{{

nnoremap T :retab<cr>
vnoremap T :retab<cr>
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

nnoremap <cr> o<esc>
nnoremap <leader><cr> O<esc>
nmap <leader>n o<esc>
nmap <leader>N O<esc>

" }}}
" Positioning {{{

nnoremap zj zt8<c-y>

" }}}
" Saving {{{

" nnoremap s :w<cr>

" }}}
" Search {{{

nmap <silent> <leader>es :nohl<cr>
nmap <silent> <leader>hl :nohl<cr>
nmap <silent> <leader>, :nohl<cr>
vmap <leader>f /
vmap <leader>f /
nnoremap <c-d> *N
nnoremap * *N
nnoremap n nzzzv
nnoremap N Nzzzv

" }}}
" Selecting {{{

nmap <leader>A ggVG
nmap <leader>sa ggVG
noremap gp `[v`]
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

" ctrlp {{{

set buftype=
let g:ctrlp_dont_split = 'netrw'
let g:ctrlp_open_new_file = 0
let g:ctrlp_reuse_window = 1
let g:ctrlp_split_window = 0

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
" indentLine {{{

let g:indentLine_leadingSpaceChar='.'
let g:indentLine_char='.'

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

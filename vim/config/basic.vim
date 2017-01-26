" Config :: Basic
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

" Appearance {{{

set colorcolumn=80
" let &colorcolumn=join(range(81,999),",")
" set cursorline
set nocursorline
" set showmatch
set noshowmatch

" }}}
" Airline {{{

set encoding=utf-8
set laststatus=2
set cmdheight=1

" }}}
" Autocomplete {{{

set wildmenu

" }}}
" Backspace {{{

" set backspace=2
set backspace=indent,start,eol

" }}}
" Buffer {{{

set hidden
" set modifiable

" }}}
" Concealing {{{

set cole=0

" }}}
" Directories {{{

if !isdirectory(expand("~/.vim/backup/"))
  silent !echo "Creating backup dir..."
  silent !mkdir -p ~/.vim/backup
endif
if !isdirectory(expand("~/.vim/tmp/"))
  silent !echo "Creating tmp dir..."
  silent !mkdir -p ~/.vim/tmp
endif
if !isdirectory(expand("~/.vim/undo/"))
  silent !echo "Creating undo dir..."
  silent !mkdir -p ~/.vim/undo
endif
set directory=~/.vim/tmp//
set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//

" }}}
" File types {{{

autocmd BufNewFile,BufRead *.json set ft=javascript
au BufRead,BufNewFile *.mjml set filetype=html
au BufRead,BufNewFile *.tpl set filetype=html
au BufRead,BufNewFile *.twig set filetype=html
autocmd Filetype ruby setlocal foldmethod=indent|set nocursorline|set norelativenumber
au FileType gitcommit set tw=0


" }}}
" Folding {{{

set fdc=0
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
set copyindent
set expandtab
set list
set listchars=tab:▸\ ,eol:¬,trail:·,extends:>,precedes:<
set nojoinspaces
set number
" set relativenumber
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2
set shiftround
" set textwidth=80

if has('linebreak')
  let &showbreak='⤷ '
endif
if has('linebreak')
  set breakindent
  if exists('&breakindentopt')
    set breakindentopt=shift:2
  endif
endif

" }}}
" Mouse {{{

set mouse=a

" }}}
" Newline {{{

set noeol

" }}}
" Performance {{{

set lazyredraw
set nocompatible
set re=1
set scrolljump=10
" set synmaxcol=128
set ttyfast
syntax sync minlines=80
let loaded_matchparen = 1
" set ttimeout
" set ttimeoutlen=250
" set notimeout

" }}}
" Scrolling {{{

set scrolloff=3
set sidescrolloff=3

" }}}
" Searching {{{

set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase
set switchbuf=usetab

" }}}
" Sounds {{{

set visualbell
set noerrorbells

" }}}
" Splits {{{

set splitright

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

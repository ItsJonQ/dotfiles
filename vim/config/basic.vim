" Config :: Basic
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

" Appearance {{{

set colorcolumn=80
" let &colorcolumn="80,".join(range(100,999),",")
" set cursorline
set nocursorline
set noshowmatch
set noerrorbells
set novisualbell

" }}}
" Airline {{{

set encoding=utf-8
set laststatus=0
set cmdheight=1

" }}}
" Autocomplete {{{

set wildmenu

" }}}
" Backspace {{{

set backspace=indent,start,eol

" }}}
" Buffer {{{

set hidden
" set modifiable
"" check one time after 4s of inactivity in normal mode
" set autoread
" au CursorHold * checktime

" }}}
" Clipboard {{{

if has("clipboard")
  " set clipboard=unnamed " copy to the system clipboard
end

" }}}
" Concealing {{{

set cole=0

" }}}
" Directories {{{

" set autochdir

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

au BufRead,BufNewFile *.json set ft=javascript
au BufRead,BufNewFile *.ts set ft=javascript
au BufRead,BufNewFile *.mjml set filetype=html
au BufRead,BufNewFile *.tpl set filetype=html
" au BufRead,BufNewFile *.twig set filetype=html
au BufRead,BufNewFile *.md set spell
au BufRead,BufNewFile *.markdown set spell
au Filetype markdown set spell
au Filetype ruby setlocal foldmethod=indent|set nocursorline|set norelativenumber
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

set autoindent
set copyindent
set expandtab
set list
set listchars=tab:▸\ ,eol:¬,trail:·,extends:>,precedes:<
set nojoinspaces
set number
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2
set shiftround
" set wrap
set linebreak
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
" Performance {{{

" set lazyredraw
set nolazyredraw
set nocompatible
set re=1
" set scrolljump=10
set synmaxcol=256
set ttyfast
syntax sync minlines=256
" let loaded_matchparen  1
" set ttimeout
" set ttimeoutlen=250
" set notimeout

" }}}
" Scrolling {{{

" set scrolloff=3
" set sidescrolloff=3

" }}}
" Searching {{{

set hlsearch
set ignorecase
set incsearch
set smartcase
set switchbuf=usetab

" }}}
" Sounds {{{

set visualbell
set noerrorbells

" }}}
" Spelling {{{

if has("gui_running")
  set nospell
else
  " set spell
endif
set nospell
hi SpellBad gui=underline

" }}}
" Splits {{{

set splitbelow
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

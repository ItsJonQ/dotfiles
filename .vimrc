" .vimrc
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================
" vim:fdm=marker
" Above setting enables .vimrc folding

" Getting start!
" Press zl, and watch all the things fold :)
" Press zf to focus on a specific section

" Normalize =============================================================== {{{

" Reset {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" }}}

" }}}
" Vundle ================================================================== {{{

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

Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'kshenoy/vim-signature'
Plugin 'mattn/emmet-vim'
Plugin 'rking/ag.vim'
" Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'vim-scripts/CursorLineCurrentWindow'

" }}}
" Themes {{{

Plugin 'joshdick/onedark.vim'
Plugin 'joshdick/airline-onedark.vim'
Plugin 'pbrisbin/vim-colors-off'
Plugin 'w0ng/vim-hybrid'

" }}}
" Syntax highlighting {{{"{{{
Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plugin 'StanAngeloff/php.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'cespare/vim-toml'
Plugin 'evidens/vim-twig'
Plugin 'groenewege/vim-less'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'othree/html5.vim'
Plugin 'plasticboy/vim-markdown'
" Javascript syntax
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'bigfish/vim-js-context-coloring'
Plugin 'mxw/vim-jsx'
" Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/yajs.vim'
" Plugin 'pangloss/vim-javascript'

" }}}"}}}
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

set encoding=utf-8
set laststatus=2
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
" set modifiable

" }}}
" Concealing {{{

set cole=0

" }}}
" Directories {{{

set directory=~/.vim/tmp//
set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//

" }}}
" File types {{{

autocmd BufNewFile,BufRead *.json set ft=javascript
au BufRead,BufNewFile *.tpl set filetype=html
au BufRead,BufNewFile *.twig set filetype=html


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
" Performance {{{

set lazyredraw
set re=1
set scrolljump=5
set synmaxcol=200
set ttyfast

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

" Syntax / color
syntax on
if $TERM == "xterm-256color"
  set t_Co=256
endif

" }}}
" Color scheme {{{

let g:onedark_termcolors=16

" MacVim
if has("gui_running")

  syntax on
  color onedark

  set columns=80 lines=40
  set gfn=*
  set guifont=Monaco:h12

else

  color onedark
  " color solarized
  " color molokai
  " color off

  hi LineNr ctermbg=None
  hi Normal ctermbg=None

  " set background=dark

  if (g:colors_name == "off")

    " syntax off
    " set background=dark
    set background=light

    " Background based tweaks
    if(&background == "light")

      let g:indentLine_color_term = 251
      hi ColorColumn ctermbg=253
      hi CursorLine ctermbg=253
      hi FoldColumn ctermfg=248
      hi Normal ctermbg=254
      hi Pmenu ctermbg=254 ctermfg=239

    elseif(&background == "dark")

      let g:indentLine_color_term = 237

      hi ColorColumn ctermbg=0
      hi CursorLine ctermbg=236
      hi FoldColumn ctermfg=242

    endif

  else

    set background=dark

    let g:indentLine_color_term = 237

    hi ColorColumn ctermbg=0
    hi CursorLine ctermbg=236
    hi FoldColumn ctermfg=242
    hi NonText ctermfg=237 ctermbg=None

    hi LineNr ctermbg=None
    hi Normal ctermbg=None

  endif

  if(g:colors_name == "pencil")
    set background=light
    hi Normal ctermbg=254

    let g:indentLine_color_term = 251

    hi ColorColumn ctermbg=254
    hi CursorLine ctermbg=254
    hi FoldColumn ctermfg=248
    hi LineNr ctermfg=250
    hi Pmenu ctermbg=253 ctermfg=239
  endif

  if(g:colors_name == "onedark")
    set background=dark
    hi LineNr ctermbg=None
    " hi Normal ctermbg=None
    hi CursorLine ctermbg=8
  endif

endif

" General color enhancements
hi IncSearch ctermbg=214 ctermfg=234
hi PmenuSel ctermbg=214 ctermfg=234
hi Search ctermbg=220 ctermfg=234
hi Visual ctermbg=33 ctermfg=234

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

" Best/worst remapping
" nnoremap ; :
" vnoremap ; :

" }}}
" Buffers {{{

nnoremap gbb :ls<cr>:buffer<space>
nnoremap gb- :ls<cr>:sb<space>
nnoremap gb\ :ls<cr>:vert sb<space>
nnoremap ,b :ls<cr>:buffer<space>
nnoremap <c-b>b :ls<cr>:buffer<space>
vnoremap <c-b>b :ls<cr>:buffer<space>
nnoremap <c-b>- :ls<cr>:sb<space>
vnoremap <c-b>- :ls<cr>:sb<space>
nnoremap <c-b>\ :ls<cr>:vert sb<space>
vnoremap <c-b>\ :ls<cr>:vert sb<space>
" nnoremap L :bn<cr>
" nnoremap H :bp<cr>
nnoremap <c-b>n :bn<cr>
vnoremap <c-b>n :bn<cr>
nnoremap <c-b>p :bp<cr>
vnoremap <c-b>p :bp<cr>
nnoremap <c-b>d :bd<cr>
vnoremap <c-b>d :bd<cr>
nnoremap <c-b>q :bd<cr>
vnoremap <c-b>q :bd<cr>
nnoremap <c-b>o :BufOnly<cr>
vnoremap <c-b>o :BufOnly<cr>
nnoremap <c-b>O :sba<cr>
vnoremap <c-b>O :sba<cr>
nnoremap <leader>q :bd<cr>
vnoremap <leader>q :bd<cr>
nnoremap <leader>[ :bp<cr>
nnoremap <leader>] :bn<cr>
nnoremap <leader>o :BufOnly<cr>
nnoremap ,[ :bp<cr>
nnoremap ,] :bn<cr>
nnoremap ,- :sba<cr>
nnoremap ,\ :vert sba<cr>


"}}}
" Better movement: Arrows {{{

nnoremap j gj
nnoremap k gk
nnoremap J jzz
nnoremap K kzz
nnoremap } }zz
nnoremap { {zz

" }}}
" Better movement: Windows {{{

nnoremap <up> <c-w>k
nnoremap <down> <c-w>j
nnoremap <left> <c-w>h
nnoremap <right> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" }}}
" Better movement: Words {{{

nnoremap B ^
nnoremap W $

" }}}
" Commenting {{{

nnoremap <silent>gc :Commentary<cr>
vnoremap <silent>gc :Commentary<cr>
nnoremap <silent> <leader>c :Commentary<cr>
vnoremap <silent> <leader>c :Commentary<cr>

" }}}
" Copy / paste {{{

vnoremap <Leader>y "+y
nnoremap <Leader>p "+Pg`]
vnoremap <Leader>p "+Pg`]
nnoremap <Leader>P "+Pg`]
vnoremap <Leader>P "+Pg`]

" }}}
" Delete {{{

vnoremap <leader>dd cc<esc>
nnoremap <leader>ds :call <SID>StripTrailingWhitespaces()<CR>

" }}}
" Escape {{{

imap jj <Esc>

" }}}
" File explorer {{{

" command E Ex
nnoremap <c-e> :Ex<space>
vnoremap <c-e> :Ex<space>

" }}}
" Folding {{{

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
" Indent using spaces (Default: 2)
nnoremap ,tt :set sw=2<cr>:set expandtab<cr>:%retab!<cr>gg=G''
vnoremap ,tt :set sw=2<cr>:set expandtab<cr>:%retab!<cr>gg=G''
nnoremap ,t4 :set sw=4<cr>:set expandtab<cr>:%retab!<cr>gg=G''
nnoremap ,t8 :set sw=8<cr>:set expandtab<cr>:%retab!<cr>gg=G''
" Indent using tabs (Default: 4)
nnoremap ,TT :set noexpandtab<cr>:set ts=4<cr>:set sw=4<cr>:%retab!<cr>gg=G''
nnoremap ,T2 :set noexpandtab<cr>:set ts=2<cr>:set sw=2<cr>:%retab!<cr>gg=G''
nnoremap ,T8 :set noexpandtab<cr>:set ts=8<cr>:set sw=8<cr>:%retab!<cr>gg=G''
nmap > >>
vmap > >gv
nmap < <<
vmap < <gv

" }}}
" Marks {{{

nnoremap '' ''zz

" }}}
" Movement {{{

nnoremap <s-down> :m +1<cr>
nnoremap <s-up> :m -2<cr>
nnoremap G Gzz

" }}}
" New lines {{{

nnoremap <leader><cr> o<esc>
nmap <leader>n o<esc>
nmap <leader>N O<esc>

" }}}
" Positioning {{{

" nnoremap zj ''zz

" }}}
" Scrolling {{{

nnoremap <silent> <c-u> <c-u>zz
nnoremap <silent> <c-d> <c-d>zz

" }}}
" Search {{{

nmap <silent> <leader>es :nohl<cr>
nmap <silent> <leader>hl :nohl<cr>
nmap <silent> <leader>, :nohl<cr>
vmap <leader>f /
vmap <leader>f /
" nnoremap <c-d> *N
nnoremap * *N
vnoremap * y/<C-R>"<CR>N
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap % :%s/\<<C-r>=expand('<cword>')<CR>\>/
vnoremap % y:%s/\<<c-r>=expand('<c-r>"')<cr>\>/

" }}}
" Selecting {{{

nnoremap <leader>a ggVG
noremap gp `[v`]
vnoremap u <nop>

" }}}
" Sort {{{

nnoremap gsi( vi(:sort<cr>
nnoremap gsi[ vi[:sort<cr>
nnoremap gsip vip:sort<cr>
nnoremap gsit vit:sort<cr>
nnoremap gsi{ vi{:sort<cr>
vnoremap gss :sort<cr>

" }}}
" {{{ Splitting

nnoremap <c-w>\ :vs<cr>
nnoremap <c-w>- :sp<cr>

" }}}
" Plugins {{{

" Emmet {{{

imap <c-,>e <c-y>,

" }}}
" Fugitive {{{
"
"
nnoremap gi :Git<space>
"
" }}}
" GitGutter {{{

let g:gitgutter_map_keys = 0

" }}}
" {{{ NerdTree

map ,n :NERDTreeToggle<CR>

" }}}
" {{{ Silver Searcher

nnoremap <silent> <s-left> :cprev<cr>
nnoremap <silent> <s-right> :cnext<cr>

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

" Airline {{{

let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1

" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'

let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''

" }}}
" ctrlp {{{

" set buftype=
let g:ctrlp_dont_split = 'netrw'
let g:ctrlp_open_new_file = 0
let g:ctrlp_split_window = 0
" let g:ctrlp_reuse_window = 1
let g:ctrlp_reuse_window  = 'startify'

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
" JSON {{{

let g:vim_json_syntax_conceal = 0

" }}}
" Markdown {{{

let g:vim_markdown_conceal = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 2

" }}}
" {{{ MiniBufExplorer

if !exists('g:miniBufExplStatusLineText')
  let g:miniBufExplStatusLineText = "-Buffers-"
endif

" }}}
" {{{ NerdTree

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" }}}
" silver searcher {{{
if executable('ag')
  " note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
  nnoremap <c-f> :Ag<space>
endif

" optimization
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/bower_components,*/node_modules,*/.vagrant,*/.github,*/.asset-cache,*/.grunt,*/tmp,*/.tmp,_site,dev,tmp,.publish,*/.grunt-tmp,*/site/css

" }}}
" {{{ Syntax highlighting (othree)

let g:used_javascript_libs = 'underscore,backbone,jquery,requirejs,react,handlebars'

" }}}
" Performance boost ====================================================== {{{

" *Sigh* Is the performance boost worth it?
" set nocursorcolumn
" set nocursorline
" set norelativenumber
syntax sync minlines=256

" }}}
" Vim Training =========================================================== {{{

" Stop doing these commands!!!!

" }}}
" Quick notes ============================================================ {{{
nnoremap ,q :e ~/Dropbox/Apps/PlainText\ 2/Quick\ Notes/vim.md<cr>
" }}}


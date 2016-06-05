" Config :: Keyboard
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

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
nnoremap <Leader>p "+pg`]
vnoremap <Leader>p "+pg`]
nnoremap <Leader>P "+Pg`]
vnoremap <Leader>P "+Pg`]

" }}}
" Delete {{{

vnoremap <leader>dd cc<esc>
nnoremap <leader>ds :call <SID>StripTrailingWhitespaces()<CR>

" }}}
" Escape {{{

" imap jj <Esc>

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
" Quick notes ============================================================ {{{
nnoremap ,q :e ~/Dropbox/Apps/PlainText\ 2/Quick\ Notes/vim.md<cr>
" }}}

" Override :: Config
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================
" Overridding configs that get set just before Vim opens

set nocursorline
set laststatus=2
set noshowcmd
let g:netrw_cursor=0
" let g:netrw_list_hide= '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\.\.\=/\=$'
" syntax off

set noeb vb t_vb=

set lazyredraw
set ttyfast
if (has("ttyscroll"))
  set ttyscroll=3
endif

" Neovim speeds
" https://github.com/neovim/neovim/issues/2093
" set ttimeout
" set ttimeoutlen=0
" set matchtime=0

" set foldmethod=manual

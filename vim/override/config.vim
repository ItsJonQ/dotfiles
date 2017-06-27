" Override :: Config
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================
" Overridding configs that get set just before Vim opens

set nocursorline
" set cursorline
set laststatus=2
set showcmd!
let g:netrw_cursor=0
" let g:netrw_list_hide= '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\.\.\=/\=$'
" syntax off

" Neovim speeds
" https://github.com/neovim/neovim/issues/2093
set ttimeout
set ttimeoutlen=0
set matchtime=0

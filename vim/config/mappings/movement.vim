" Config :: Mappings :: Movement
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

nnoremap <s-down> :m .+1<cr>==
nnoremap <s-up> :m .-2<cr>==
vnoremap <s-down> :m '>+1<cr>gv=gv
vnoremap <s-up> :m '<-2<cr>gv=gv
nnoremap G Gzz

" HARD MODE
" nnoremap h <nop>
" nnoremap j <nop>
" nnoremap k <nop>
" nnoremap l <nop>

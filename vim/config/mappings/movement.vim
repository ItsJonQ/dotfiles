" Config :: Mappings :: Movement
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

nnoremap <s-down> :m .+1<cr>==
nnoremap <s-up> :m .-2<cr>==
vnoremap <s-down> :m '>+1<cr>gv=gv
vnoremap <s-up> :m '<-2<cr>gv=gv

" Autocenter. Milk would hate this. But it's ma vimrc.
nnoremap G Gzz
nnoremap gg ggzz
" nnoremap j jzz
" nnoremap k kzz
nnoremap <c-u> <c-u>zz
nnoremap <c-d> <c-d>zz


" HARD MODE
" nnoremap h <nop>
" nnoremap j <nop>
" nnoremap k <nop>
" nnoremap l <nop>

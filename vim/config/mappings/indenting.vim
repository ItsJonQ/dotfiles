" Config :: Mappings :: Indenting
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

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

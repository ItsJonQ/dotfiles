" Config :: Mappings :: Searching
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

" nmap <silent> <leader>es :nohl<cr>
" nmap <silent> <leader>hl :nohl<cr>
nmap <silent> <leader>, :nohl<cr>
nnoremap * *N
vnoremap * y/<C-R>"<CR>N
nnoremap c* *Ncgn
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap % :%s/\<<C-r>=expand('<cword>')<CR>\>/
vnoremap % y:%s/\<<c-r>=expand('<c-r>"')<cr>\>/
nnoremap <leader>5 :%s/
vnoremap <leader>5 y:%s/<c-r>=expand('<c-r>"')<cr>/

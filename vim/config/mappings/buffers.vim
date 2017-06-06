" Config :: Mappings :: Buffers
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

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
" nnoremap <c-b>O :sba<cr>
" vnoremap <c-b>O :sba<cr>
nnoremap <leader>q :bd<cr>
vnoremap <leader>q :bd<cr>
nnoremap <leader>[ :bp<cr>
nnoremap <leader>] :bn<cr>
nnoremap <leader>o :BufOnly<cr>
" nnoremap <c-[> :bp<cr>
" nnoremap <c-]> :bn<cr>
nnoremap ,[ :bp<cr>
nnoremap ,] :bn<cr>
" nnoremap ,- :sba<cr>
" nnoremap ,\ :vert sba<cr>

" Config :: Plugin :: Ale
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

" Source
" https://github.com/w0rp/ale#installation

nnoremap <silent> <c-g>j :ALENextWrap<Return>zz
nnoremap <silent> <c-g>k :ALEPreviousWrap<Return>zz

augroup FiletypeGroup
  autocmd!
  au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
  au BufNewFile,BufRead *.js set filetype=javascript.jsx
augroup END

let g:ale_sign_column_always = 1
let g:ale_linters = {'jsx': ['stylelint', 'eslint'],'javascript': ['stylelint', 'eslint']}
let g:ale_linter_aliases = {'jsx': 'css'}

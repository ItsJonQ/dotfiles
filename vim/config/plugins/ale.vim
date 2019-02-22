" " Config :: Plugin :: Ale
" " Author: Q <itsjonq@gmail.com>
" " Source: https://github.com/ItsJonQ/dotfiles
" " =============================================================================

" " Source
" " https://github.com/w0rp/ale#installation

" nnoremap <silent> <c-g>j :ALENextWrap<Return>zz
" nnoremap <silent> <c-g>k :ALEPreviousWrap<Return>zz
" nnoremap <silent> <c-g>ss :ALEToggle<Return>
" nnoremap <silent> <leader>j :ALENextWrap<Return>zz
" nnoremap <silent> <leader>k :ALEPreviousWrap<Return>zz
" nnoremap <silent> <leader>l :ALEToggle<Return>
" nnoremap <silent> ,f :ALEFix<Return>

" augroup FiletypeGroup
"   autocmd!
"   au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
"   au BufNewFile,BufRead *.js set filetype=javascript.jsx
" augroup END

" let g:ale_enabled = 0
" let g:ale_fix_on_save = 0
" let g:ale_sign_column_always = 0
" let g:ale_lint_on_text_changed = 'never'
" " let g:ale_lint_delay = 1000

" " let g:ale_linters = {}
" let g:ale_linters = {'jsx': ['eslint'],'javascript': ['standard']}
" let g:ale_linter_aliases = {'jsx': 'css'}

" let g:ale_fixers = {}
" let g:ale_fixers['javascript'] = ['standard']

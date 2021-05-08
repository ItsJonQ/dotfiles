" Config :: Plugin :: Ale
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

let g:ale_fix_on_save = 1

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_linters = { 'javascript': ['flow-language-server', 'eslint'] }
let b:ale_fixers = ['prettier', 'eslint']
" let g:ale_fixers = { 'javascript': ['prettier'] }

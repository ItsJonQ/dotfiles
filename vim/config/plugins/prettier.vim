" Config :: Plugin :: Prettier
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/prettier/prettier/tree/master/editors/vim
" =============================================================================

" nnoremap <silent> <leader>r :Prettier<Return>
" nnoremap <silent> <leader>e :Prettier<Return>
" nnoremap <silent> <leader>w :w<Return>
" nnoremap <silent> <leader>ww :Prettier<Return>:w<Return>
" nnoremap <silent> <leader>wq :Prettier<Return>:wq<Return>

let g:prettier#quickfix_enabled = 1
let g:prettier#quickfix_auto_focus = 0

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" let g:prettier#config#bracket_spacing = "true"
" let g:prettier#config#jsx_bracket_same_line = "false"
" let g:prettier#config#parser = "babylon"
" let g:prettier#config#print_width = 80
" let g:prettier#config#single_quote = "true"
" let g:prettier#config#tab_width = 2
" let g:prettier#config#trailing_comma = "all"
" let g:prettier#config#use_tabs = "false"

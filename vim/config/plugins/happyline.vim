" Config :: Plugin :: Happyline
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

" blue
let g:happyline_normal = get(g:, 'happyline_normal', '#0075c3')
" green
let g:happyline_insert = get(g:, 'happyline_insert', '#24c267')
" lighter_blue
" let g:happyline_insert = get(g:, 'happyline_insert', '#0089eb')
" purple
" let g:happyline_insert = get(g:, 'happyline_insert', '#672678')
" orange
" let g:happyline_insert = get(g:, 'happyline_insert', '#fd6428')

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    " Insert
    execute 'hi statusline guibg=' . g:happyline_insert
  elseif a:mode == 'r'
    " Leave
    call ResetStatuslineColor()
  else
    call ResetStatuslineColor()
  endif
endfunction

function! ResetStatuslineColor()
  execute 'hi statusline guibg=' . g:happyline_normal
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave * call ResetStatuslineColor()

" default the statusline to green when entering Vim
execute 'hi statusline guibg=' . g:happyline_normal

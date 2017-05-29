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

function! HappyLineInsertStatusLine()
  execute 'hi statusline guifg=#ffffff guibg=' . g:happyline_insert
  return ''
endfunction

function! HappyLineResetStatusLine()
  execute 'hi statusline guifg=#ffffff guibg=' . g:happyline_normal
  return ''
endfunction

function! HappyLineUpdateStatusLine(mode)
  " Insert
  if a:mode == 'i'
    call HappyLineInsertStatusLine()
  " Leave
  elseif a:mode == 'r'
    call HappyLineResetStatusLine()
  else
    call HappyLineResetStatusLine()
  endif
  return ''
endfunction

function! HappyLineAddSpace()
  return ' '
endfunction

au InsertEnter * call HappyLineUpdateStatusLine(v:insertmode)
au InsertChange * call HappyLineUpdateStatusLine(v:insertmode)
au InsertLeave * call HappyLineResetStatusLine()

" default the statusline to green when entering Vim
call HappyLineResetStatusLine()

set statusline=\ %f
set statusline+=\ %m
set statusline+=%=%L,%v\ \·\ %p%%
set statusline+=\%{HappyLineAddSpace()}

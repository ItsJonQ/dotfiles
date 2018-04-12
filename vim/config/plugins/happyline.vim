" Config :: Plugin :: Happyline
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

" blue
let g:happyline_normal = get(g:, 'happyline_normal', '#0075c3')
" green
let g:happyline_insert = get(g:, 'happyline_insert', '#24c267')
" purple
let g:happyline_visual = get(g:, 'happyline_visual', '#672678')
" orange
let g:happyline_replace = get(g:, 'happyline_replace', '#cc6633')

function! HappyLineNormalStatusLine()
  execute 'hi statusline guifg=#ffffff guibg=' . g:happyline_normal
  return ''
endfunction

function! HappyLineInsertStatusLine()
  execute 'hi statusline guifg=#ffffff guibg=' . g:happyline_insert
  return ''
endfunction

function! HappyLineReplaceStatusLine()
  execute 'hi statusline guifg=#ffffff guibg=' . g:happyline_replace
  return ''
endfunction

function! HappyLineVisualStatusLine()
  execute 'hi statusline guifg=#ffffff guibg=' . g:happyline_visual
  return ''
endfunction

function! HappyLineUpdateStatusLine()
  let a:mode = mode()
  " Normal
  if a:mode == 'n'
    call HappyLineNormalStatusLine()
  " Visual
  elseif a:mode == 'v' || a:mode =~ 'V'
    " call HappyLineVisualStatusLine()
  " Replace
  elseif a:mode == 'R'
    call HappyLineReplaceStatusLine()
  " Insert
  elseif a:mode == 'i'
    call HappyLineInsertStatusLine()
  else
    call HappyLineNormalStatusLine()
  endif
  return ''
endfunction

function! HappyLineAddSpace()
  return ' '
endfunction

" au InsertEnter * call HappyLineUpdateStatusLine()
" au InsertChange * call HappyLineUpdateStatusLine()
" au InsertLeave * call HappyLineUpdateStatusLine()

" call HappyLineUpdateStatusLine()

set statusline=
set statusline+=\ %{mode()}
set statusline+=\ ·
set statusline+=\ %f
set statusline+=\ %m
set statusline+=%=
" set statusline+=\ [%{wordCount#WordCount()}\]
" set statusline+=\ ·
set statusline+=\ (%l,%v\)
set statusline+=\ ·
set statusline+=\ %p%%
set statusline+=\ ·
set statusline+=\%{HappyLineAddSpace()}
" set statusline+=\ %{HappyLineUpdateStatusLine()}


" nnoremap v v | :call HappyLineUpdateStatusLine()
" nnoremap V V | :call HappyLineUpdateStatusLine()
" vnoremap <ESC> <ESC> | :call HappyLineUpdateStatusLine()
" vnoremap <c-c> <c-c> | :call HappyLineUpdateStatusLine()
" inoremap <ESC> <ESC> | :call HappyLineUpdateStatusLine()
" inoremap <c-c> <c-c> | :call HappyLineUpdateStatusLine()

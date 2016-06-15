" Config :: Mappings :: Delete
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

nnoremap <leader>ds :call <SID>StripTrailingWhitespaces()<CR>
nnoremap dsa :call <SID>StripTrailingWhitespaces()<CR>

" function :: Delete trailing white space
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.T
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)

  call TrimEndLines()
endfunction

" function :: Delete empty line at the end of file
" Source:
" http://stackoverflow.com/questions/7495932/how-can-i-trim-blank-lines-at-the-end-of-file-in-vim
function TrimEndLines()
  let save_cursor = getpos(".")
  :silent! %s#\($\n\s*\)\+\%$##
  call setpos('.', save_cursor)
endfunction

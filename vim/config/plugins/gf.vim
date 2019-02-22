" Config :: Plugin :: FG
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

augroup suffixes
  autocmd!

  let associations = [
    \["javascript", ".js,.javascript,.es,.esx,.json,.ts,.tsx"],
  \]

  for ft in associations
    execute "autocmd FileType " . ft[0] . " setlocal suffixesadd=" . ft[1]
  endfor
augroup END

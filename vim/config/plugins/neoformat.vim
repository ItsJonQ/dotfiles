" Config :: Plugin :: neoformat
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" Plugin: https://github.com/sbdchd/neoformat
" =============================================================================

augroup fmt
  autocmd!
  autocmd BufWritePre * Neoformat
augroup END

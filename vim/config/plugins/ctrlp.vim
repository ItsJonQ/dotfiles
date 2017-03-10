" Config :: Plugin :: Ctrl P
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

let g:ctrlp_open_new_file = 'r'
let g:ctrlp_reuse_window = 'netrw\|help\|quickfix'


set runtimepath^=~/.vim/bundle/ctrlp.vim

" make ctrl-p use silver searcher!
" source : https://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/

let g:ctrlp_use_caching = 0
let g:ctrlp_show_hidden = 1

" Source:
" https://github.com/kien/ctrlp.vim/issues/174
if executable('ag')
  " Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast, respects .gitignore
  " and .agignore. Ignores hidden files by default.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -f -g ""'
else
  "ctrl+p ignore files in .gitignore
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif

" Config :: Plugin :: Ctrl P
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

" set buftype=
let g:ctrlp_dont_split = 'netrw'
let g:ctrlp_open_new_file = 0
let g:ctrlp_split_window = 0
" let g:ctrlp_reuse_window = 1
let g:ctrlp_reuse_window  = 'startify'

set runtimepath^=~/.vim/bundle/ctrlp.vim

" make ctrl-p use silver searcher!
" source : https://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/

let g:ctrlp_use_caching = 0
if executable('ag')
  " set grepprg=ag\ --nogroup\ --nocolor
  " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" else
  " let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  " let g:ctrlp_prompt_mappings = {
  "   \ 'acceptselection("e")': ['<space>', '<cr>', '<2-leftmouse>'],
  "   \ }

  " let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
  "       \ --ignore .git
  "       \ --ignore .svn
  "       \ --ignore .hg
  "       \ --ignore .DS_Store
  "       \ --ignore "**/*.pyc"
  "       \ -g ""'

  " Source: T-Pope
  " https://github.com/kien/ctrlp.vim/issues/174
  let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

endif

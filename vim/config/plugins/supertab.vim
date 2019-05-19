" Config :: Plugin :: SuperTab
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

let b:SuperTabDisabled = 1

" Only enable Super Tab for markdown files.
" Otherwise, CoC will handle tab completion

" au BufNewFile,BufRead,FileType *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md,COMMIT_EDITMSG let b:SuperTabDisabled = 0
" au FileType *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md,COMMIT_EDITMSG let b:SuperTabDisabled = 0

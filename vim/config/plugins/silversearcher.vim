" Config :: Plugin :: Silver Searcher
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

if executable('ag')
  " note we extract the column as well as the file and line number
  " set grepprg=ag\ --nogroup\ --nocolor\ --column
  " set grepformat=%f:%l:%c%m
  let g:ackprg = 'ag --vimgrep'
  nnoremap <c-f> :Ack<space>
endif

" optimization
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/bower_components,*/node_modules,*/.vagrant,*/.github,*/.asset-cache,*/.grunt,*/tmp,*/.tmp,_site,dev,tmp,.publish,*/.grunt-tmp,*/site/css,*/site/vendor,*/site/vendors,*/vendor-reference

" Config :: Appearance
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

" Basic {{{

" Syntax / color
syntax on
if $TERM == "xterm-256color"
  set t_Co=256
endif

" }}}
" Color scheme {{{

" let g:onedark_termcolors=16
" let g:hybrid_custom_term_colors = 1
let base16colorspace=256
"
color base16-tomorrow
set background=dark

if $BASE16_SHADE == "dark"
  set background=dark
endif

if $BASE16_SHADE == "light"
  set background=light
endif


" MacVim
if has("gui_running")

  syntax on
  set columns=80 lines=40
  set gfn=*
  set guifont=Menlo:h13

else
  " let g:indentLine_color_term = 237

  " hi ColorColumn ctermbg=0
  " hi FoldColumn ctermfg=242
  " hi NonText ctermfg=237 ctermbg=None

  " hi Normal ctermbg=None
  " hi CursorLine ctermbg=8
endif

" General color enhancements
hi IncSearch ctermbg=214 ctermfg=234
hi LineNr ctermbg=None
hi PmenuSel ctermbg=214 ctermfg=234
hi Search ctermbg=220 ctermfg=234
hi Visual ctermbg=33 ctermfg=234

" }}}
" Cursor / highlighting {{{

set cursorline
set showmatch

" Hide match color
hi MatchParen cterm=none ctermbg=None ctermfg=None

" }}}
" Typography {{{

set linespace=5

" }}}
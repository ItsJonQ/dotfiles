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

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" }}}
" Color scheme {{{

let base16colorspace=256

color base16-vscode
set background=dark

if $BASE16_SHADE == "dark"
  set background=dark
endif

if $BASE16_SHADE == "light"
  set background=light
endif

if !empty($BASE16_COLOR)
  color base16-$BASE16_COLOR
endif

" MacVim
if has("gui_running")

  set columns=80 lines=30
  set gfn=*
  set guifont=Menlo\:h13
  set guifont=SF\ Mono\:h13
  " set guifont=Fira\ Code\ Light\:h15
  " set guifont=SF\ Mono\ Light\:h14
  " set guifont=SF\ Mono\:h14
  " Force color
  " color base16-vsplus
  " color base16-one
endif

" General color enhancements
hi LineNr ctermbg=NONE guibg=NONE

" }}}
" Hide match color
hi MatchParen cterm=none ctermbg=None ctermfg=None

" }}}
" Typography {{{

set linespace=5

" }}}

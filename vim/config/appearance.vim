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

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" }}}
" Color scheme {{{

" let g:onedark_termcolors=16
" let g:hybrid_custom_term_colors = 1
let base16colorspace=256

color base16-one
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

  set columns=80 lines=40
  set gfn=*
  set guifont=Input\ Mono\ Narrow:h16
  " Force color
  " color base16-zenyatta
  color base16-drac

else
  " let g:indentLine_color_term = 237

  " hi ColorColumn ctermbg=0
  " hi FoldColumn ctermfg=242
  " hi NonText ctermfg=237 ctermbg=None

  " hi Normal ctermbg=None
  " hi CursorLine ctermbg=8
endif

" General color enhancements
" hi IncSearch ctermbg=214 ctermfg=234
hi LineNr ctermbg=NONE guibg=NONE
" hi PmenuSel ctermbg=214 ctermfg=234
" hi Search ctermbg=220 ctermfg=234
" hi Visual ctermbg=27 ctermfg=234
" hi Visual ctermbg=39 ctermfg=234
" hi Visual ctermbg=199 ctermfg=234
" hi Visual ctermbg=199 ctermfg=52
hi StatusLine ctermbg=NONE guibg=NONE

" }}}
" Hide match color
hi MatchParen cterm=none ctermbg=None ctermfg=None

" }}}
" Typography {{{

" Italic comments
" highlight Comment cterm=italic

set linespace=5

" }}}

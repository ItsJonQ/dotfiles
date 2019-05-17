" Config :: Plugin :: FZF
" Author: Q <itsjonq@gmail.com>
" Source: https://github.com/ItsJonQ/dotfiles
" =============================================================================

let g:fzf_command_prefix = 'Fzf'

nnoremap <C-p> :FzfGitFiles --exclude-standard --others --cached<CR>
" nnoremap <C-f> :FzfAg<CR>
nnoremap <C-f> :FzfRg<CR>

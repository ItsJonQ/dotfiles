"" Config :: Plugin :: CoC
"" Author: Q <itsjonq@gmail.com>
"" Source: https://github.com/ItsJonQ/dotfiles
"" =============================================================================

"command! -nargs=0 Prettier :CocCommand prettier.formatFile

"let g:conoline_auto_enable = 1
"let g:conoline_use_colorscheme_default_insert=1

"" https://github.com/neoclide/coc.nvim#example-vim-configuration

"" if hidden is not set, TextEdit might fail.
"set hidden

"" Some servers have issues with backup files, see #649
"set nobackup
"set nowritebackup

"" Better display for messages
"" set cmdheight=2

"" Smaller updatetime for CursorHold & CursorHoldI
"set updatetime=300

"" don't give |ins-completion-menu| messages.
"set shortmess+=c

"" always show signcolumns
"set signcolumn=yes

"" Use tab for trigger completion with characters ahead and navigate.
"" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

""" Use <c-space> to trigger completion.
""" inoremap <silent><expr> <c-f> coc#refresh()

""" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
""" Coc only does snippet and additional edit on confirm.
""inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"" Use `[c` and `]c` to navigate diagnostics
"nmap <silent> [c <Plug>(coc-diagnostic-prev)
"nmap <silent> ]c <Plug>(coc-diagnostic-next)
"nmap <silent> <leader>j <Plug>(coc-diagnostic-prev)
"nmap <silent> <leader>k <Plug>(coc-diagnostic-next)

""" Remap keys for gotos
""nmap <silent> gd <Plug>(coc-definition)
""nmap <silent> gy <Plug>(coc-type-definition)
""nmap <silent> gi <Plug>(coc-implementation)
""nmap <silent> gr <Plug>(coc-references)

"" Show documentation in preview window
"" nnoremap <silent> <leader>t :call <SID>show_documentation()<CR>
"nnoremap <silent> K :call <SID>show_documentation()<CR>

"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  else
"    call CocAction('doHover')
"  endif
"endfunction

"" Highlight symbol under cursor on CursorHold
"autocmd CursorHold * silent call CocActionAsync('highlight')

"" Remap for rename current word
"nmap <leader>rn <Plug>(coc-rename)

"" Remap for format selected region
"xmap <leader>z  <Plug>(coc-format-selected)
"nmap <leader>z  <Plug>(coc-format-selected)

"augroup mygroup
"  autocmd!
"  " Setup formatexpr specified filetype(s).
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"  " Update signature help on jump placeholder
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end

"" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"" xmap <leader>a  <Plug>(coc-codeaction-selected)
"" nmap <leader>a  <Plug>(coc-codeaction-selected)

"" Remap for do codeAction of current line
"" nmap <leader>ac  <Plug>(coc-codeaction)
"" Fix autofix problem of current line
"" nmap <leader>qf  <Plug>(coc-fix-current)

"" Use `:Format` to format current buffer
"command! -nargs=0 Format :call CocAction('format')

"" Use `:Fold` to fold current buffer
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)


"" Add diagnostic info for https://github.com/itchyny/lightline.vim
"" let g:lightline = {
""       \ 'colorscheme': 'wombat',
""       \ 'active': {
""       \   'left': [ [ 'mode', 'paste' ],
""       \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
""       \ },
""       \ 'component_function': {
""       \   'cocstatus': 'coc#status'
""       \ },
""       \ }



"" Using CocList
"" Show all diagnostics
"" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions
"" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"" Show commands
"" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document
"" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols
"" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"" nnoremap <silent> <leader>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"" nnoremap <silent> <leader>k  :<C-u>CocPrev<CR>
"" Resume latest coc list
"" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"au BufNewFile,BufRead,FileType *.vim,*.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md,COMMIT_EDITMSG :silent :CocDisable


"" instead of having ~/.vim/coc-settings.json
"" let s:LSP_CONFIG = {
"" \  'flow': {
"" \    'command': exepath('flow'),
"" \    'args': ['lsp'],
"" \    'filetypes': ['javascript', 'javascriptreact'],
"" \    'initializationOptions': {},
"" \    'requireRootPattern': 1,
"" \    'settings': {},
"" \    'rootPatterns': ['.flowconfig']
"" \  }
"" \}

"" let s:languageservers = {}
"" for [lsp, config] in items(s:LSP_CONFIG)
""   let s:not_empty_cmd = !empty(get(config, 'command'))
""   if s:not_empty_cmd | let s:languageservers[lsp] = config | endif
"" endfor

"" if !empty(s:languageservers)
""   call coc#config('languageserver', s:languageservers)
""   endif

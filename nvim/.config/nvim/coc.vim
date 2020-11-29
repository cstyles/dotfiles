" coc stuff
nnoremap <silent><expr> gd exists('g:coc_status') ? ":call CocActionAsync('jumpDefinition')<CR>" : "gd"
" nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gh :call CocActionAsync('doHover')<CR>
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gt <Plug>(coc-type-definition)

nmap <silent> <Leader>F <Plug>(coc-format)
nmap <Leader>R <Plug>(coc-rename)
nmap <silent> <Leader>cf <Plug>(coc-fix-current)
nmap <silent> <Leader>cr o<ESC>dd:write<CR>u
nmap <silent> <Leader>cR <Plug>(coc-rename)

nnoremap <silent> <M-l> :call CocActionAsync('highlight')<CR>

imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)

" Use `[d` and `]d` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <Leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <Leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <Leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <Leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@<CR>

" highlight link CocHighlight Search
highlight link CocHighlightRead TermCursor
highlight link CocHighlightWrite TermCursor

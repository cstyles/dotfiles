" coc stuff
nnoremap <silent><expr> gd exists('g:coc_status') ? ":call CocActionAsync('jumpDefinition')<CR>" : "gd"
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() && get(complete_info(), 'selected', -1) >= 0 ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> ga <Plug>(coc-codeaction-cursor)
xmap <silent> ga <Plug>(coc-codeaction-selected)
nnoremap <silent> gh :call CocActionAsync('doHover')<CR>
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gt <Plug>(coc-type-definition)

nmap <silent> <Leader>d :CocCommand rust-analyzer.openDocs<CR>
nmap <silent> <Leader>F <Plug>(coc-format)
nmap <silent> <Leader>cf <Plug>(coc-fix-current)
nmap <silent> <Leader>cR o<ESC>dd:write<CR>u
nmap <silent> <Leader>cr <Plug>(coc-rename)

nnoremap <silent> <M-l> :call CocActionAsync('highlight')<CR>

imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)

" Use `[d` and `]d` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" Or `:CocList diagnostics`
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

xmap hf <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
xmap hc <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <Leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <Leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" highlight link CocHighlight Search
highlight link CocHighlightRead TermCursor
highlight link CocHighlightWrite TermCursor

" Turn off arrow keys to force me to use jkil
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Use jkil (QWERTY) / neui (Colemak) to navigate
nnoremap n h|xnoremap n h
nnoremap N K|xnoremap N K
nnoremap e j|xnoremap e j
nnoremap u k|xnoremap u k
nnoremap i l|xnoremap i l

" Assign the displaced functions to the old keys
" 'i' is the most important so assign it to the easiest key to press ('h')
nnoremap h i|xnoremap h i
" 'e' is the least used of these four commands so assign it to the hardest key to press ('j')
nnoremap j e|xnoremap j e
nnoremap gj ge|xnoremap gj ge
" 'k' on Colemak is 'n' on QWERTY so just use QWERTY mapping
nnoremap k n|xnoremap k n
nnoremap K N|xnoremap K N
" 'l' on Colemak is 'u' on QWERTY so just use QWERTY mapping
nnoremap l u|xnoremap l u

" TODO: mappings for <C-w>ARROWS
nnoremap <C-w>n <C-w>h|tnoremap <C-w>n <C-w>h
nnoremap <C-w>e <C-w>j|tnoremap <C-w>e <C-w>j
nnoremap <C-w>u <C-w>k|tnoremap <C-w>u <C-w>k
nnoremap <C-w>i <C-w>l|tnoremap <C-w>i <C-w>l
nnoremap <C-w>N <C-w>H|tnoremap <C-w>N <C-w>H
nnoremap <C-w>E <C-w>J|tnoremap <C-w>E <C-w>J
nnoremap <C-w>U <C-w>K|tnoremap <C-w>U <C-w>K
nnoremap <C-w>I <C-w>L|tnoremap <C-w>I <C-w>L
tnoremap <C-w>[ <C-w>N " Enter scrollback for terminal
nnoremap <C-w><C-n> <C-w>h
nnoremap <C-w><C-e> <C-w>j
nnoremap <C-w><C-u> <C-w>k
nnoremap <C-w><C-i> <C-w>l

nnoremap <silent> <Leader>n :noh<CR>
nnoremap <silent> <C-n> :noh<CR>
nnoremap <silent> <C-q> :call setqflist([])<Bar>:bufdo vimgrepadd // %<CR>
nnoremap <silent> <C-j> :write !diff % -<CR>
nnoremap <silent> <C-c> :%s///gn<CR>

" Fix keymaps for netrw (File Explorer)
augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
    noremap <buffer> u k
endfunction

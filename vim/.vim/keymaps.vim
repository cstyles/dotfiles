" Turn off arrow keys to force me to use jkil
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Use jkil (QWERTY) / neui (Colemak) to navigate
nnoremap n h|xnoremap n h
nnoremap N K|xnoremap N K
nnoremap e j|xnoremap e j
nnoremap ge gj|xnoremap ge gj
nnoremap u k|xnoremap u k
nnoremap gu gk|xnoremap gu gk
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
nnoremap <C-w><C-n> <C-w>h|tnoremap <C-w><C-n> <C-w>h
nnoremap <C-w><C-e> <C-w>j|tnoremap <C-w><C-e> <C-w>j
nnoremap <C-w><C-u> <C-w>k|tnoremap <C-w><C-u> <C-w>k
nnoremap <C-w><C-i> <C-w>l|tnoremap <C-w><C-i> <C-w>l

nnoremap <C-w>h <C-w>i|tnoremap <C-w>h <C-w>i
nnoremap <C-w>j <C-w>e|tnoremap <C-w>j <C-w>e
nnoremap <C-w>k <C-w>n|tnoremap <C-w>k <C-w>n
nnoremap <C-w>l <C-w>u|tnoremap <C-w>l <C-w>u
nnoremap <C-w><C-h> <C-w>i|tnoremap <C-w><C-h> <C-w>i
nnoremap <C-w><C-j> <C-w>e|tnoremap <C-w><C-j> <C-w>e
nnoremap <C-w><C-k> <C-w>n|tnoremap <C-w><C-k> <C-w>n
nnoremap <C-w><C-l> <C-w>u|tnoremap <C-w><C-l> <C-w>u

nnoremap <silent> <Leader>n :noh<CR>
nnoremap <silent> <C-n> :noh<CR>
nnoremap <silent> <C-q> :call setqflist([])<Bar>:bufdo vimgrepadd // %<CR>
nnoremap <silent> <C-j> :write !diff % -<CR>
nnoremap <silent> <C-c> :%s///gn<CR>

" Alt+Backspace deletes words, <C-w><C-w> switches windows
tnoremap <C-w><C-w> <C-w>w

nnoremap <silent> <Leader>g :GF<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>f :FZF<CR>
nnoremap <silent> <Leader>t :tabnew<CR>

nnoremap Y y$
xnoremap Y "+y
nnoremap <M-P> "+P|xnoremap <M-P> "+P
nnoremap <M-p> "+p|xnoremap <M-p> "+p

inoremap <S-Tab> <C-x><C-f>

" Fix keymaps for netrw (File Explorer)
augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
    noremap <buffer> n h
    noremap <buffer> e j
    noremap <buffer> u k
    noremap <buffer> i l
endfunction

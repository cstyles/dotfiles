nnoremap <Space> :

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
nnoremap gl gu|xnoremap gl gu

" TODO: mappings for <C-w>ARROWS
" nmap ` <C-w>
nmap w <C-w>
nnoremap <C-w>n <C-w>h|tnoremap <C-w>n <C-w>h
nnoremap <C-w>e <C-w>j|tnoremap <C-w>e <C-w>j
nnoremap <C-w>u <C-w>k|tnoremap <C-w>u <C-w>k
nnoremap <C-w>i <C-w>l|tnoremap <C-w>i <C-w>l
nnoremap <C-w>N <C-w>H|tnoremap <C-w>N <C-w>H
nnoremap <C-w>E <C-w>J|tnoremap <C-w>E <C-w>J
nnoremap <C-w>U <C-w>K|tnoremap <C-w>U <C-w>K
nnoremap <C-w>I <C-w>L|tnoremap <C-w>I <C-w>L
nnoremap <C-w><C-n> <C-w>h|tnoremap <C-w><C-n> <C-w>h
nnoremap <C-w><C-e> <C-w>j|tnoremap <C-w><C-e> <C-w>j
nnoremap <C-w><C-u> <C-w>k|tnoremap <C-w><C-u> <C-w>k
nnoremap <C-w><C-i> <C-w>l|tnoremap <C-w><C-i> <C-w>l

tnoremap <C-w>[ <C-w>N " Enter scrollback for terminal

nnoremap <C-w>h <C-w>i|tnoremap <C-w>h <C-w>i
nnoremap <C-w>j <C-w>e|tnoremap <C-w>j <C-w>e
nnoremap <C-w>k <C-w>n|tnoremap <C-w>k <C-w>n
nnoremap <C-w>l <C-w>u|tnoremap <C-w>l <C-w>u
nnoremap <C-w><C-h> <C-w>i|tnoremap <C-w><C-h> <C-w>i
nnoremap <C-w><C-j> <C-w>e|tnoremap <C-w><C-j> <C-w>e
nnoremap <C-w><C-k> <C-w>n|tnoremap <C-w><C-k> <C-w>n
nnoremap <C-w><C-l> <C-w>u|tnoremap <C-w><C-l> <C-w>u
" tnoremap <C-w>H <C-w>I " not anything by default, use for custom function
" tnoremap <C-w>J <C-w>E " not anything by default, use for custom function
" tnoremap <C-w>K <C-w>N
" tnoremap <C-w>L <C-w>U " not anything by default, use for custom function

nnoremap <silent> <C-n> :nohlsearch<CR>
xnoremap <silent> <C-n> :<C-u>nohlsearch<CR>gv
nnoremap <silent> <C-q> :call setqflist([])<Bar>:bufdo vimgrepadd // %<CR>:below copen<CR>
nnoremap <silent> <C-k> :vimgrep // %<CR>:below copen<CR>
nnoremap <silent> <C-j> :write !diff % -<CR>
nnoremap <silent> <C-c> :%s///gn<CR>

nnoremap <silent> <C-g> :GFiles<CR>|xnoremap <silent> <C-g> :GFiles<CR>

tnoremap <C-w><C-w> <C-w>w

nmap <silent> <Leader>` ysiW`
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>B :Git blame<CR>
nnoremap <silent> <Leader>c :cclose<CR>
nnoremap <silent> <Leader>e :split \| :enew<CR>
nnoremap <silent> <Leader>f :FZF<CR>
nnoremap <silent> <Leader>g :Rg <C-r><C-w><CR>
nnoremap <silent> <Leader>G :GBrowse<CR>|xnoremap <silent> <Leader>G :GBrowse<CR>
nnoremap <silent> <Leader>h :History:<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
" Reverse join (i.e., join by prepending the next line to the current line)
nnoremap <Leader>j ddpkJ
nnoremap <silent> <Leader>l :BLines<CR>
nnoremap <silent> <Leader>p :Neomake<CR>
nnoremap <silent> <Leader>q gwap
nnoremap <silent> <Leader>r :edit!<CR>
nnoremap <silent> <Leader>R :Rails<CR>
nnoremap <silent> <Leader>t :Shoulda<CR>
nnoremap <silent> <Leader>T :Tags<CR>
nnoremap <silent> <Leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>

nnoremap Y y$
xnoremap Y "+y

nnoremap <M-y> "+y$
nnoremap <M-Y> ^"+y$

xnoremap <M-y> "+y
xnoremap <M-Y> "+y

nnoremap <M-p> "+p|xnoremap <M-p> "+p
nnoremap <M-P> "+P|xnoremap <M-P> "+P

xnoremap D "+d
nnoremap <M-D> "+D

" Paste such that we replace the rest of the line
nnoremap <M-r> "_Dp
" Paste (using the system clipboard) such that we replace the rest of the line
nnoremap <M-R> "_D"+p

nnoremap <silent> <M-e> :move +1<CR>
xnoremap <silent> <M-e> :move +1<CR>gv
nnoremap <silent> <M-u> :move -2<CR>
xnoremap <silent> <M-u> :move -2<CR>gv

nnoremap Q @@

nnoremap zk nzz
nnoremap zn nzz
nnoremap zK Nzz
nnoremap zN Nzz

inoremap <M-BS> <C-w>
inoremap <M-Left> <C-o>B|xnoremap <M-Left> B
inoremap <M-Right> <C-o>W|xnoremap <M-Right> W
inoremap <S-Tab> <C-x><C-f>
inoremap <M-Tab> <C-x><C-o><C-p>

imap <c-x><c-x> <plug>(fzf-complete-path)

xnoremap <Tab> >gv
xnoremap <S-Tab> <gv

" Copy current filename to the system clipboard (relative to pwd)
nnoremap <silent> gn :let @+=expand("%")<CR>
" Copy current filename to the system clipboard (absolute path)
nnoremap <silent> gN :let @+=expand("%:p")<CR>

" Make <C-]> (:tag) act like g<C-]> (:tjump) and vice versa
nnoremap <C-]> g<C-]>
nnoremap g<C-]> <C-]>
" Search for tag under cursor using FZF
nnoremap <silent> z] yiw:Tags<CR><C-\><C-n>p:startinsert<CR>

" Allow pasting from register without having to hit Shift
cnoremap <C-r>' <C-r>"
inoremap <C-r>' <C-r>"

command! -bar -bang Q quit<bang>
command! -bar -bang Qa quitall<bang>
command! -bar -bang -nargs=? W write<bang> <args>

" Always open quickfix list underneath current window
command! Cw below cw

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

    noremap <buffer> h i
    noremap <buffer> j e
    noremap <buffer> k n
    noremap <buffer> l u
endfunction

augroup markdown_mapping
    autocmd!
    autocmd filetype markdown call MarkdownMapping()
augroup END

function! MarkdownMapping()
    nnoremap e gj
    nnoremap u gk
endfunction

let g:swap#keymappings = g:swap#key_layout_discreet
let g:swap#keymappings['n'] = ['swap_prev']
let g:swap#keymappings['i'] = ['swap_next']
let g:swap#keymappings['u'] = ['swap_prev']
let g:swap#keymappings['e'] = ['swap_next']

" This annoys the hell out of me and I never use it anyway
imap <C-a> <Nop>

" Show highlight rule for word under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Possible keymaps:

" nnoremap <BS>
" nnoremap <CR>
" nnoremap <Del>
" nnoremap -
" nnoremap +
" nnoremap X
" nnoremap U

" nnoremap <silent> <C-h>
" nnoremap <silent> <C-p>
" nnoremap <silent> <C-s>
" nnoremap <silent> <C-z>
"
" nnoremap <silent> ga
" nnoremap <silent> gb
" nnoremap <silent> gp
" nnoremap <silent> gP
" nnoremap <silent> gL
" nnoremap <silent> gN
" nnoremap <silent> g[
"
" nnoremap <silent> zB
" nnoremap <silent> zD
" nnoremap <silent> zf
" nnoremap <silent> zI
" nnoremap <silent> zJ
" nnoremap <silent> zK
" nnoremap <silent> zq
" nnoremap <silent> zQ
" nnoremap <silent> zS
" nnoremap <silent> zT
" nnoremap <silent> zU
" nnoremap <silent> zV
" nnoremap <silent> zY
" nnoremap <silent> zZ (dangerous!)

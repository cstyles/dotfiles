set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set relativenumber

" A bunch of settings to make Neovim's terminal act more like Vim's
tnoremap <C-w>[ <C-\><C-n>

tnoremap <C-w>n <C-\><C-n><C-w>h
tnoremap <C-w>e <C-\><C-n><C-w>j
tnoremap <C-w>u <C-\><C-n><C-w>k
tnoremap <C-w>i <C-\><C-n><C-w>l
tnoremap <C-w><C-n> <C-\><C-n><C-w>h
tnoremap <C-w><C-e> <C-\><C-n><C-w>j
tnoremap <C-w><C-u> <C-\><C-n><C-w>k
tnoremap <C-w><C-i> <C-\><C-n><C-w>l
tnoremap <C-w>N <C-\><C-n><C-w>Ha
tnoremap <C-w>E <C-\><C-n><C-w>Ja
tnoremap <C-w>U <C-\><C-n><C-w>Ka
tnoremap <C-w>I <C-\><C-n><C-w>La
tnoremap <C-w><C-b> <C-\><C-n><C-w>b
tnoremap <C-w><C-t> <C-\><C-n><C-w>t
tnoremap <C-w>b <C-\><C-n><C-w>b
tnoremap <C-w>t <C-\><C-n><C-w>t

tnoremap <C-w>s <C-\><C-n><C-w>s
tnoremap <C-w>v <C-\><C-n><C-w>v
tnoremap <C-w>= <C-\><C-n><C-w>=
tnoremap <C-w>_ <C-\><C-n><C-w>_
tnoremap <C-w><bar> <C-\><C-n><C-w><bar>

tnoremap <C-w>w <C-\><C-n><C-w><C-w>
tnoremap <C-w><c-w> <C-\><C-n><C-w><c-w>
tnoremap <C-w>. <C-w>

nnoremap <silent> <Leader>t :split \| :terminal<CR>
nnoremap <silent> <Leader>v :vsplit \| :terminal<CR>
augroup terminal_mapping
  autocmd!
  autocmd BufWinEnter,WinEnter term://* startinsert
  autocmd BufWinLeave,WinLeave term://* stopinsert
  autocmd TermOpen term://* startinsert
  autocmd TermClose term://* quit
augroup END

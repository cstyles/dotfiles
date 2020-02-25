set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set relativenumber
set mouse=a
set inccommand=nosplit
set autoread

" WHen running git-commit from inside an nvim terminal, open a new buffer in
" the host nvim instead of opening a nested nvim process
if !empty($NEOVIM_REMOTE_PATH)
  let $NEOVIM_REMOTE_PYTHON = $NEOVIM_REMOTE_PATH . '/venv/bin/python3'
  let $NEOVIM_REMOTE_SCRIPT = $NEOVIM_REMOTE_PATH . '/nvr/nvr.py'
  let $GIT_EDITOR = $NEOVIM_REMOTE_PYTHON . ' ' . $NEOVIM_REMOTE_SCRIPT . ' -cc split --remote-wait'
end

augroup git_nvr
  autocmd!
  autocmd filetype gitcommit,gitrebase,gitconfig setlocal bufhidden=delete
augroup END

" A bunch of settings to make Neovim's terminal act more like Vim's
tnoremap <C-w>[ <C-\><C-n>
tnoremap <C-w><C-[> <C-\><C-n>

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
tnoremap <C-w>x <C-\><C-n><C-w>x

tnoremap <C-w>s <C-\><C-n><C-w>s|tnoremap <C-w><C-s> <C-\><C-n><C-w>s
tnoremap <C-w>v <C-\><C-n><C-w>v|tnoremap <C-w><C-v> <C-\><C-n><C-w>v
tnoremap <C-w>= <C-\><C-n><C-w>=:startinsert<CR>|tnoremap <C-w><C-=> <C-\><C-n><C-w>=:startinsert<CR>
tnoremap <C-w>_ <C-\><C-n><C-w>_|tnoremap <C-w><C-_> <C-\><C-n><C-w>_
tnoremap <C-w><bar> <C-\><C-n><C-w><bar>:startinsert<CR>

tnoremap <C-w>w <C-\><C-n><C-w><C-w>|tnoremap <C-w><C-w> <C-\><C-n><C-w><C-w>
tnoremap <C-w>. <C-w>

tnoremap <silent> <C-n> <C-\><C-n>:nohlsearch<CR>:startinsert<CR>
tnoremap <C-w><C--> <C-\><C-n>0:startinsert<CR>

nnoremap <M-Tab> gt
nnoremap <M-C-Y> gT

nnoremap <silent> <M-t> :tabnew<CR>
nnoremap <M-Tab> gt|tnoremap <M-Tab> <C-\><C-n>gt
" Meta-Shift-Tab
nnoremap <M-C-Y> gT|tnoremap <M-C-Y> <C-\><C-n>gT
nnoremap <M-S-Tab> gT|tnoremap <M-S-Tab> <C-\><C-n>gT
nnoremap <M-}> gt|tnoremap <M-}> <C-\><C-n>gt
nnoremap <M-{> gT|tnoremap <M-{> <C-\><C-n>gT
nnoremap <silent> <M-w> :quit<CR>

nnoremap <silent> <Leader>s :split \| :terminal<CR>
nnoremap <silent> <Leader>v :botright vsplit \| :terminal<CR>

nnoremap <silent> <Leader>S :split \| Vmux<CR>
nnoremap <silent> <Leader>V :botright vsplit \| Vmux<CR>

cnoremap <M-BS> <C-w>
nnoremap <M-BS> dbx

augroup terminal_mapping
  autocmd!
  " autocmd BufWinEnter,WinEnter term://* startinsert
  " autocmd BufWinLeave,WinLeave term://* stopinsert
  autocmd TermOpen term://* startinsert
  autocmd TermClose term://* quit
  autocmd TermEnter * setlocal scrolloff=0
  autocmd TermLeave * setlocal scrolloff=3
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

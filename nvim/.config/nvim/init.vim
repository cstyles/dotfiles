call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'cstyles/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

Plug 'radenling/vim-dispatch-neovim'

Plug 'godlygeek/tabular'
Plug 'neomake/neomake'

Plug 'mhartington/oceanic-next'
Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

Plug 'rhysd/git-messenger.vim'

Plug 'justinmk/vim-sneak'
Plug 'haya14busa/vim-asterisk'
Plug 'machakann/vim-swap'
call plug#end()

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set relativenumber
set mouse=a
set inccommand=nosplit
set autoread
set signcolumn=yes:2
set cmdheight=2

augroup git_nvr
  autocmd!
  autocmd FileType gitcommit,gitrebase,gitconfig setlocal bufhidden=delete
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
tnoremap <C-w>N <C-\><C-n><C-w>H:startinsert<CR>
tnoremap <C-w>E <C-\><C-n><C-w>J:startinsert<CR>
tnoremap <C-w>U <C-\><C-n><C-w>K:startinsert<CR>
tnoremap <C-w>I <C-\><C-n><C-w>L:startinsert<CR>
tnoremap <C-w><C-b> <C-\><C-n><C-w>b
tnoremap <C-w><C-t> <C-\><C-n><C-w>t
tnoremap <C-w>b <C-\><C-n><C-w>b
tnoremap <C-w>t <C-\><C-n><C-w>t
tnoremap <C-w>x <C-\><C-n><C-w>x

tnoremap <C-w>s <C-\><C-n><C-w>s|tnoremap <C-w><C-s> <C-\><C-n><C-w>s
tnoremap <C-w>v <C-\><C-n><C-w>v|tnoremap <C-w><C-v> <C-\><C-n><C-w>v
tnoremap <silent> <C-w>= <C-\><C-n><C-w>=:startinsert<CR>|tnoremap <C-w><C-=> <C-\><C-n><C-w>=:startinsert<CR>
tnoremap <silent> <C-w>_ <C-\><C-n><C-w>_:startinsert<CR>|tnoremap <C-w><C-_> <C-\><C-n><C-w>_:startinsert<CR>
tnoremap <silent> <C-w><bar> <C-\><C-n><C-w><bar>:startinsert<CR>

tnoremap <C-w>w <C-\><C-n><C-w><C-w>|tnoremap <C-w><C-w> <C-\><C-n><C-w><C-w>
tnoremap <C-w>. <C-w>

tnoremap <silent> <C-n> <C-\><C-n>:nohlsearch<CR>:startinsert<CR>
tnoremap <silent> <C-w><C--> <C-\><C-n>0:startinsert<CR>

" Paste the contents of the yank register without leaving terminal mode
tnoremap <silent> <C-r>' <C-\><C-n>p:startinsert<CR>
tnoremap <silent> <C-r>" rgw <C-\><C-n>p:startinsert<CR> <M-i>

tnoremap <silent> <C-r><C-r> <C-r>
tnoremap <silent> <C-r>r <C-r>

nnoremap <M-Tab> gt
nnoremap <M-C-Y> gT
nnoremap <silent> <M-1> :tabfirst<CR>
nnoremap <M-2> 2gt
nnoremap <M-3> 3gt
nnoremap <M-4> 4gt
nnoremap <M-5> 5gt
nnoremap <M-6> 6gt
nnoremap <M-7> 7gt
nnoremap <M-8> 8gt
nnoremap <silent> <M-9> :tablast<CR>

nnoremap <silent> <M-t> :tabnew<CR>
nnoremap <M-Tab> gt|tnoremap <M-Tab> <C-\><C-n>gt
" Meta-Shift-Tab
nnoremap <M-C-Y> gT|tnoremap <M-C-Y> <C-\><C-n>gT
nnoremap <M-S-Tab> gT|tnoremap <M-S-Tab> <C-\><C-n>gT
nnoremap <M-}> gt|tnoremap <M-}> <C-\><C-n>gt
nnoremap <M-{> gT|tnoremap <M-{> <C-\><C-n>gT
nnoremap <silent> <M-w> :quit<CR>
nnoremap <silent> <M-W> :quit!<CR>

nnoremap <silent> <Leader>s :split \| :terminal<CR>
nnoremap <silent> <Leader>v :botright vsplit \| :terminal<CR>

nnoremap <silent> <Leader>S :split \| Vmux<CR>
nnoremap <silent> <Leader>V :botright vsplit \| Vmux<CR>

cnoremap <M-BS> <C-w>
nnoremap <M-BS> dbx

map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)
map z*  <Plug>(asterisk-*)
map z#  <Plug>(asterisk-#)
map zg* <Plug>(asterisk-g*)
map zg# <Plug>(asterisk-g#)

augroup terminal_mapping
  autocmd!
  autocmd TermOpen term://* startinsert
  autocmd TermClose term://* call nvim_input('<CR>')
  autocmd TermOpen * setlocal nonumber norelativenumber signcolumn=auto
augroup END

call neomake#configure#automake('nrw', 500)

runtime git-messenger.vim
runtime coc.vim

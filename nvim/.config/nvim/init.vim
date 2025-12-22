call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'cstyles/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

Plug 'godlygeek/tabular'

Plug 'mhartington/oceanic-next'
Plug 'sheerun/vim-polyglot'
Plug 'inko-lang/inko.vim'
Plug 'ChrisWellsWood/roc.vim'
Plug 'Nymphium/vim-koka'
Plug 'wbbradley/vim-rune'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'honza/vim-snippets'

Plug 'rhysd/git-messenger.vim'

Plug 'haya14busa/vim-asterisk'
Plug 'ggandor/leap.nvim'

Plug 'AndrewRadev/sideways.vim'
Plug 'tek/vim-fieldtrip'
Plug 'kana/vim-submode'

Plug 'AndrewRadev/splitjoin.vim'
Plug 'kassio/neoterm'

Plug 'andymass/vim-matchup'
Plug 'machakann/vim-highlightedyank'
Plug 'farmergreg/vim-lastplace'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/vim-vsnip'
call plug#end()

lua <<LEAP
  vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')

  -- Default safe_labels but with 'l' instead of 'u'
  local labels = require('leap').opts.safe_labels
  for i = 1, #labels do
    if labels[i] == "u" then
      labels[i] = "l"
    end
  end

  -- 'f' is in safe_labels by default so just remove 'n' instead of mapping
  for i = 1, #labels do
    if labels[i] == "n" then
      table.remove(labels, i)
      break
    end
  end
LEAP

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set relativenumber
set mouse=a
set inccommand=nosplit
set autoread
set signcolumn=yes:2
set cmdheight=2
set foldcolumn=auto     " Show folds in sidebar

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
tnoremap <silent> <C-w><C-\> <C-\><C-n><C-w><bar>:startinsert<CR>

tnoremap <C-w>w <C-\><C-n><C-w><C-w>|tnoremap <C-w><C-w> <C-\><C-n><C-w><C-w>
tnoremap <C-w>. <C-w>

tnoremap <silent> <C-r>n <C-\><C-n>:nohlsearch<CR>:startinsert<CR>
tnoremap <silent> <C-r><C-n> <C-\><C-n>:nohlsearch<CR>:startinsert<CR>
tnoremap <silent> <C-w><C--> <C-\><C-n>0:startinsert<CR>

" Paste the contents of the yank register without leaving terminal mode
tnoremap <silent> <C-r>' <C-\><C-n>p:startinsert<CR>
tnoremap <silent> <C-r><C-'> <C-\><C-n>p:startinsert<CR>
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
nnoremap <silent> <M-}> :tabmove +1<CR>|tnoremap <silent> <M-}> <C-\><C-n>:tabmove +1<CR>
nnoremap <silent> <M-{> :tabmove -1<CR>|tnoremap <silent> <M-{> <C-\><C-n>:tabmove -1<CR>
nnoremap <silent> <M-w> :quit<CR>
nnoremap <silent> <M-W> :quit!<CR>

nnoremap <silent> <Leader>s :split \| :Tnew<CR>
nnoremap <silent> <Leader>S :Tnew<CR>
nnoremap <silent> <Leader>v :botright vsplit \| :Tnew<CR>
nnoremap <silent> <Leader>x :Texec exit<CR>

cnoremap <M-BS> <C-w>
nnoremap <M-BS> dbx

tnoremap w[ <C-\><C-n>

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

command! -bar -range Shoulda call Shoulda()

function! Shoulda()
  let l:line_number = search('^\s*\(should\|context\)\>', 'bnW')

  " TODO: use `bundle exec ruby -Itest` if rails isn't available
  let l:test_file = expand("%")
  let l:command = 'bin/rails test ' . l:test_file

  if l:line_number != 0
    let l:command .= ' -n '
    let l:shoulda_line = getline(l:line_number)

    " Try looking for a test name/context with single quotes
    let l:test_name = matchstr(l:shoulda_line, "\\(should\\|context\\)\\s*'\\zs[^']\\+")
    if !empty(l:test_name)
      let l:command .= "'/" . l:test_name . "/'"
    else
      " If that fails, try looking for double quotes
      let l:test_name = matchstr(l:shoulda_line, '\(should\|context\)\s*"\zs[^"]\+')
      let l:command .= '"/' . l:test_name . '/"'
    endif
  endif

  if len(g:neoterm.instances) == 0
    botright vsplit
  endif

  noautocmd execute 'T' l:command
endfunction

let g:neoterm_automap_keys = '<C-h>'
autocmd VimEnter * Tmap 

runtime git-messenger.vim

nnoremap <silent> g> :SidewaysRight<CR>
nnoremap <silent> g< :SidewaysLeft<CR>
omap aa <Plug>SidewaysArgumentTextobjA
xmap aa <Plug>SidewaysArgumentTextobjA
omap ia <Plug>SidewaysArgumentTextobjI
xmap ia <Plug>SidewaysArgumentTextobjI

nmap <Leader>i <Plug>SidewaysArgumentInsertBefore
nmap <Leader>a <Plug>SidewaysArgumentAppendAfter
nmap <Leader>I <Plug>SidewaysArgumentInsertFirst
nmap <Leader>A <Plug>SidewaysArgumentAppendLast

let g:fieldtrip_start_map = 'gs'
let g:fieldtrip_left = 'n'
let g:fieldtrip_right = 'i'
let g:submode_timeout = v:false

runtime cmp.lua

if empty($NOLS)
  runtime lsp.lua
endif

" vim-vsnip settings
" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select the next/previous line.
" Or (when selecting multiple lines) move the selection down/up one line.
xnoremap <silent> <M-S-e> jojo
xnoremap <silent> <M-S-u> koko

" Hack to fix `errorformat` for Rust files (rust.vim clobbers the setting)
augroup rust_errorformat
  autocmd!
  autocmd FileType rust setlocal errorformat+=%f:%l:%m
augroup END

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" Avoid side effects when it was already reset.
if &compatible
  set nocompatible
endif

" When the +eval feature is missing, the set command above will be skipped.
" Use a trick to reset compatible only when the +eval feature is missing.
silent! while 0
  set nocompatible
silent! endwhile

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

set ruler               " Show line number + line position in bottom right
set number              " Show line numbers in the gutter
set ignorecase          " Case-insensitive search
set hlsearch            " Highlight search results
set incsearch           " Show results of search while typing
set history=1000        " Number of lines of command line history to keep
set showcmd             " Display incomplete commands
set wildmenu            " Display completion matches in a status line
set wildmode=longest,full
set wildignore+=*.pyc,*.swp

set display=lastline    " Display as much as possible of the last line
                        " Display @@@ to indicate truncation

set scrolloff=3         " Show some lines of context around the cursor
set sidescrolloff=10    " [nowrap] Leave some space to the sides of the cursor
set sidescroll=10       " [nowrap] Scroll sideways in chunks

set tabstop=4           " Tabs = 4 spaces wide
set softtabstop=4       " Tabs = 4 spaces wide + delete spaces like tabs
set shiftwidth=4        " Tabs = 4 spaces (for <<, >>, etc.)
set expandtab           " Tab inserts spaces instead of tabs
set autoindent          " Copy indent from current line
set magic
set infercase           " when autocompleting with ignorecase on, infer case
set smartcase
" set pastetoggle=<f5>  " <f5> key = toggle paste option (:help paste)
set noautoread          " Don't automatically update buffer if the file changes on disk
set mouse=              " Disable mouse
set nojoinspaces        " Don't add extra spaces when joining lines ending in '.'
set breakindent         " Wrapped lines will maintain indentation
let &showbreak = "> "
set nottimeout
set ttimeoutlen=100      " How long to wait after ESC to determine if standalone
set dictionary=/usr/share/dict/words
set splitbelow          " Focus on bottom window after splitting horizontally
set splitright          " Focus on right window after splitting vertically
set cursorline          " Highlight the line that the cursor is on
set lazyredraw          " Don't redraw screen in the middle of executing macros
set undofile            " Persist undo across sessions
set foldcolumn=auto     " Show folds in sidebar

" Autocomplete using current and other buffers, current+included files, and tags
set complete=.,i,t,b
" set completeopt=menu,preview

set tags+=.tags

set shell=fish

" Do incremental searching when it's possible to timeout.
if has('reltime')
  set incsearch
endif

" Don't recognize octal numbers for Ctrl-A and Ctrl-X
set nrformats-=octal

" Switch syntax highlighting on when the terminal has colors or when using the
" GUI (which always has colors).
if &t_Co > 2 || has("gui_running")
  " Revert with ":syntax off".
  syntax on

  " I like highlighting strings inside C comments.
  " Revert with ":unlet c_comment_strings".
  let c_comment_strings=1
endif

" Fix issues with indentation in Python
filetype plugin indent on

source ~/.vim/keymaps.vim
source ~/.vim/colors.vim

" Use rg (ripgrep) in place of grep
let &grepprg = "rg -i --vimgrep --color=auto"
let &grepformat = "%f:%l:%c:%m," . &grepformat

let g:python_highlight_space_errors = 0

let g:vim_markdown_new_list_item_indent = 0

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

if has("termguicolors")
  set termguicolors
end

" Dark magic that enables italics in vim (don't need this for Neovim)
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

set runtimepath+=/usr/local/opt/fzf

let $MINITEST_REPORTER="DefaultReporter"

augroup spell
  autocmd!
  autocmd FileType gitcommit,markdown,text setlocal spell
augroup END

function! s:vmux()
  let l:uuid = "vmux-" . system('uuidgen')
  execute "edit term://tmux new-session -A -s " . l:uuid
endfunction

command! -nargs=0 Vmux :call s:vmux()

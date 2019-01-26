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
set history=200         " Keep 200 lines of command line history
set showcmd             " Display incomplete commands
set wildmenu            " Display completion matches in a status line
set wildmode=longest,full
set wildignore+=*.pyc,*.swp

set display=lastline    " Display as much as possible of the last line
                        " Display @@@ to indicate truncation

set scrolloff=0         " (Don't) Show lines of context around the cursor

set tabstop=4           " Tabs = 4 spaces wide
set softtabstop=4       " Tabs = 4 spaces wide + delete spaces like tabs
set shiftwidth=4        " Tabs = 4 spaces (for <<, >>, etc.)
set expandtab           " Tab inserts spaces instead of tabs
set autoindent          " Copy indent from current line
set smartindent         " Increase/decrease indentation intelligently
set shell=fish
set magic
set infercase           " when autocompleting with ignorecase on, infer case
set smartcase
" set pastetoggle=<f5>  " <f5> key = toggle paste option (:help paste)
" TODO: something similar as above but for toggling hlsearch
set autoread            " Update file if it changes on disk
set mouse=              " Disable mouse
set nojoinspaces        " Don't add extra spaces when joining lines ending in '.'
set breakindent         " Wrapped lines will maintain indentation

" Autocomplete using current and other buffers, current+included files, and tags
set complete=.,i,t,b

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

" Use ag (The Silver Searcher) in place of grep
" let &grepprg = "ag -i --nogroup --column $*"
" Use rg (ripgrep) in place of grep
let &grepprg = "rg -i --no-heading --column $* --color=auto"
let &grepformat = "%f:%l:%c:%m," . &grepformat

let mapleader = "\\"

let g:python_highlight_space_errors = 0

set runtimepath+=/usr/local/opt/fzf

if has("gui_macvim")
  colorscheme evening
  set mouse=a
  set relativenumber
endif

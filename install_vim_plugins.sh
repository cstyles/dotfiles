#!/usr/bin/env sh

set -e

PLUGIN_DIR="$HOME/.vim/pack/$(whoami)/start"

PLUGINS='
https://github.com/godlygeek/tabular.git
https://github.com/tpope/vim-commentary.git
https://github.com/easymotion/vim-easymotion.git
https://github.com/cstyles/vim-repeat.git
https://github.com/tpope/vim-surround.git
https://github.com/sheerun/vim-polyglot.git
https://github.com/neomake/neomake
https://github.com/tpope/vim-fugitive
https://github.com/junegunn/fzf.vim
https://github.com/cstyles/oceanic-next.git
https://github.com/mbbill/undotree.git
https://github.com/tpope/vim-rhubarb.git
https://github.com/tpope/vim-unimpaired.git
https://github.com/majutsushi/tagbar
https://github.com/autozimu/LanguageClient-neovim
'

mkdir -p "$PLUGIN_DIR"
cd "$PLUGIN_DIR"

for plugin in $PLUGINS; do
    git clone "$plugin"
    echo
done

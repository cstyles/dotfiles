#!/usr/bin/env sh

PLUGIN_DIR="$HOME/.vim/pack/$(whoami)/start"

PLUGINS='
https://github.com/godlygeek/tabular.git
https://github.com/tpope/vim-commentary.git
https://github.com/easymotion/vim-easymotion.git
https://github.com/tpope/vim-repeat.git
https://github.com/tpope/vim-surround.git
'

mkdir -p "$PLUGIN_DIR"
cd "$PLUGIN_DIR"

for plugin in $PLUGINS; do
    git clone "$plugin"
    echo
done

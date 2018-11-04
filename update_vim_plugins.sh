#!/usr/bin/env sh

PLUGIN_DIR="$HOME/.vim/pack/$(whoami)/start"

cd "$PLUGIN_DIR"

for plugin in $(ls -1); do
    cd "$plugin"
    echo "$plugin"
    git pull origin master
    cd "$PLUGIN_DIR"
    echo
done

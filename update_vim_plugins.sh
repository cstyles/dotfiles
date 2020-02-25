#!/usr/bin/env sh

set -e

PLUGIN_DIR="$HOME/.vim/pack/$(whoami)/start"

cd "$PLUGIN_DIR"

for plugin in *; do
    cd "$plugin"
    echo "$plugin"
    git pull origin master
    cd "$PLUGIN_DIR"
    echo
done

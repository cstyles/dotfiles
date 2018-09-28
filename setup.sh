#!/usr/bin/env sh

cd $(dirname "$0")
stow --target "$HOME" $(find . -mindepth 1 -maxdepth 1 -type d -not -path ./.git | cut -b 3-)

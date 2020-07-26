#!/usr/bin/env bash

set -e

cd "$(dirname "$0")"
mapfile -t args < <(fd --type=directory --exact-depth=1 .)
stow --target "$HOME" "${args[@]}"

#!/usr/bin/env bash

set -e

cd "$(dirname "$0")"
mapfile -t args < <(find . -mindepth 1 -maxdepth 1 -type d -not -path ./.git | cut -b 3-)
stow --target "$HOME" "${args[@]}"

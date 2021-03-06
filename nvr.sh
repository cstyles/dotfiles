#!/usr/bin/env sh

if [ -z ${NEOVIM_REMOTE_PATH+x} ]; then
  NEOVIM_REMOTE_PATH="$HOME/dev/python/neovim-remote"
fi

if [ -z ${NVIM_LISTEN_ADDRESS+x} ]; then
  nvim "$@"
else
  "$NEOVIM_REMOTE_PATH/venv/bin/python3" "$NEOVIM_REMOTE_PATH/nvr/nvr.py" \
    -cc split \
    --remote-wait \
    +'set bufhidden=delete' \
    "$@"
fi

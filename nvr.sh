#!/usr/bin/env sh

# echo $@
# nvim $@

# TODO:
# [x] Check presence of NVIM_LISTEN_ADDRESS (if not, just use nvim)
# [ ] What else uses EDITOR? Will this cause problems in other workflows?
# [ ] Can we re-enter insert/terminal mode after deleting buffer?
# [x] bufhidden is set on terminal buffer :\

if [ -z ${NVIM_LISTEN_ADDRESS+x} ]; then
  nvim "$@"
else
  "$NEOVIM_REMOTE_PATH/venv/bin/python3" "$NEOVIM_REMOTE_PATH/nvr/nvr.py" \
    -cc split \
    --remote-wait \
    +'set bufhidden=delete' \
    "$@"
fi

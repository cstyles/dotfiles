function nvr --description 'neovim-remote'
  command "$NEOVIM_REMOTE_PATH/venv/bin/python3" "$NEOVIM_REMOTE_PATH/nvr/nvr.py" -s $argv
end


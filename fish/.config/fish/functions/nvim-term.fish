function nvim-term --wraps nvim --description 'Open neovim with a terminal'
  command nvim '+botright vsplit|Tnew' +startinsert $argv;
end


function nvim-just-term --wraps nvim --description 'Open neovim with only a terminal'
  command nvim '+terminal' +startinsert $argv;
end


function rgb --wraps=rg --description 'Display ripgrep results using bat'
  command rgb --bat --context=3 $argv;
end

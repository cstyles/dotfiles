function rgb --wraps=rg --description 'Display ripgrep results using bat'
  ~/dev/rust/ripgrep/target/release/rg --bat --context=3 $argv;
end

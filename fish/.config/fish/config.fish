set -gx fish_user_paths $HOME/.cargo/bin $HOME/.rbenv/shims ./node_modules/.bin
set -gx EDITOR "vim"
set -gx PAGER "less"
set -gx HOMEBREW_EDITOR $EDITOR
set -gx RIPGREP_CONFIG_PATH $HOME/.ripgreprc

# Abbreviations:
abbr --global --add g git
abbr --global --add v vim
abbr --global --add n nvim

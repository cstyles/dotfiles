set -gx fish_user_paths $HOME/.cargo/bin $HOME/.rbenv/shims ./node_modules/.bin
set -gx EDITOR "vim"
set -gx HOMEBREW_EDITOR $EDITOR

# Abbreviations:
abbr --global --add g git
abbr --global --add v vim
abbr --global --add n nvim

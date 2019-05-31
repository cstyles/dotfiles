set -gx fish_user_paths $HOME/.cargo/bin $HOME/.rbenv/shims ./node_modules/.bin $HOME/dev/scripts
set -gx EDITOR "nvim"
set -gx PAGER "less"
set -gx HOMEBREW_EDITOR $EDITOR
set -gx RIPGREP_CONFIG_PATH $HOME/.ripgreprc
set -gx fish_grep rg

# Abbreviations:
abbr --global --add g git
abbr --global --add v vim
abbr --global --add n nvim

# Bindings:
bind \er __fish_grep_pipe
bind \ew __fish_wc_pipe # NOTE: M-w is already used to run `whatis` on a keyword
bind \cg fzf-git-widget
bind \cb fzf-git-branch-widget
bind \eg __fish_git_status_current_token

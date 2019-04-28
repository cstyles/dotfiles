set -gx fish_user_paths $HOME/.cargo/bin $HOME/.rbenv/shims ./node_modules/.bin $HOME/dev/scripts
set -gx EDITOR "vim"
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
bind \cg fzf-git-widget
bind \cb fzf-git-branch-widget
bind \eg __fish_git_status_current_token

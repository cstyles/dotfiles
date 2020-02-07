set -gx fish_user_paths $HOME/.cargo/bin $HOME/.rbenv/shims ./node_modules/.bin $HOME/dev/scripts
set -gx EDITOR $HOME/dev/dotfiles/nvr.sh
set -gx PAGER "less"
set -gx HOMEBREW_EDITOR $EDITOR
set -gx RIPGREP_CONFIG_PATH $HOME/.ripgreprc
set -gx fish_grep rg

# Don't shorten path in prompt
set -gx fish_prompt_pwd_dir_length 0

# set __fish_git_prompt_showdirtystate true
# set __fish_git_prompt_showuntrackedfiles true
# set __fish_git_prompt_showupstream true
set __fish_git_prompt_showcolorhints true
set __fish_git_prompt_shorten_branch_len 20

set __fish_git_prompt_char_upstream_ahead ↑
set __fish_git_prompt_char_upstream_behind ↓
set __fish_git_prompt_char_upstream_prefix ' '

set __fish_git_prompt_color_branch yellow

set fish_emoji_width 2

# Abbreviations
source (dirname (status --current-filename))/abbreviations.fish

alias cat="bat"
alias ls="exa"
alias lltr="exa --long --sort=modified"
# alias find="fd"

# Bindings:
bind \er __fish_grep_pipe
bind \ew __fish_wc_pipe # NOTE: M-w is already used to run `whatis` on a keyword
bind \cg fzf-git-widget
bind \cb fzf-git-branch-widget
bind \eg __fish_git_status_current_token
bind \ei __fish_rg_iglob_test

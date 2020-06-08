set -gx fish_user_paths $HOME/.cargo/bin $HOME/.rbenv/shims ./node_modules/.bin $HOME/dev/scripts
set -gx EDITOR $HOME/dev/dotfiles/nvr.sh
set -gx PAGER "less"
set -gx HOMEBREW_EDITOR $EDITOR
set -gx RIPGREP_CONFIG_PATH $HOME/.ripgreprc
set -gx fish_grep rg
set -gx DOTFILES (git -C (dirname (realpath (status --current-filename))) rev-parse --show-toplevel)

# Shorten parent directories in prompt
set -gx fish_prompt_pwd_dir_length 10

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

# Vendor-provided completions
set --append fish_complete_path /usr/local/share/fish/vendor_completions.d # macOS / Homebrew
set --append fish_complete_path /usr/share/fish/vendor_completions.d # arch / pacman

alias cat="bat"
alias ls="exa"
alias l="ll"
alias ltr="exa --long --sort=modified"
# alias find="fd"

# Bindings:
bind \er __fish_grep_pipe
bind \ew __fish_wc_pipe # NOTE: M-w is already used to run `whatis` on a keyword
bind \cg fzf-git-widget
bind \cb fzf-git-branch-widget
bind \eg __fish_git_status_current_token
bind \ei __fish_rg_iglob_test

bind \ck fzf-git-branch-widget-larose

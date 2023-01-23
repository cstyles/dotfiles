set -gx fish_user_paths $HOME/.cargo/bin $HOME/.rbenv/shims ./node_modules/.bin $HOME/dev/scripts
set -gx EDITOR nvr
set -gx GIT_EDITOR nvr
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

set --global --export LESS FRis

# Abbreviations
source (dirname (status --current-filename))/abbreviations.fish

if status --is-interactive
  zoxide init fish | source
end

set -gx _ZO_FZF_OPTS -1 -0

# Vendor-provided completions
set --append fish_complete_path /usr/local/share/fish/vendor_completions.d # macOS / Homebrew
set --append fish_complete_path /usr/share/fish/vendor_completions.d # arch / pacman

# Bindings:
bind \er __fish_grep_pipe
bind \ew __fish_wc_pipe # NOTE: M-w is already used to run `whatis` on a keyword
bind \cg fzf-git-widget
bind \cb fzf-git-branch-widget
bind \eg __fish_git_status_current_token
bind \ei __fish_rg_iglob_test
bind \e8 __fish_dot_star
bind \e\* __fish_star

bind \ck fzf-git-branch-widget-larose

# 'T' on Colemak is where 'F' is on QWERTY
bind \ct accept-autosuggestion
bind \et forward-word
bind \ef forward-bigword
bind \ek backward-bigword
bind \eu backward-kill-bigword
bind \e, history-token-search-forward

complete nvr --wraps nvim

set -l FISH_DIR (path dirname (status --current-filename))

set -gx fish_user_paths "$HOME/.cargo/bin" "$HOME/dev/scripts" "$HOME/.local/bin"

switch (uname -s)
case Darwin
  source "$FISH_DIR/macos.fish"
case Linux
  source "$FISH_DIR/linux.fish"
end

source "$FISH_DIR/secrets.fish"

set -gx EDITOR nvr
set -gx GIT_EDITOR nvr
set -gx PAGER "less"
set -gx HOMEBREW_EDITOR "$EDITOR"
set -gx RIPGREP_CONFIG_PATH "$HOME/.ripgreprc"
set -gx fish_grep rg
set -gx DOTFILES (git -C (path dirname (builtin realpath (status --current-filename))) rev-parse --show-toplevel)

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

source "$FISH_DIR/abbreviations.fish"

if status --is-interactive
  zoxide init fish | source
end

set -gx _ZO_FZF_OPTS -1 -0

# Extensions to existing completions
source "$FISH_DIR/completions.fish"

# Bindings:
bind alt-r __fish_grep_pipe
bind alt-w __fish_wc_pipe # NOTE: M-w is already used to run `whatis` on a keyword
bind ctrl-g fzf-git-widget
bind ctrl-b fzf-git-branch-widget
bind alt-g __fish_git_status_current_token
bind alt-i __fish_rg_iglob_test
bind alt-8 __fish_dot_star
bind 'alt-*' __fish_star

bind ctrl-k fzf-git-branch-widget-larose

# 'T' on Colemak is where 'F' is on QWERTY
bind ctrl-t accept-autosuggestion
bind alt-t forward-word
bind alt-f forward-bigword
bind alt-k backward-bigword
bind alt-u backward-kill-bigword
bind alt-j __insert_previous_command
bind alt-comma history-token-search-forward
bind alt-q __insert_vimgrep

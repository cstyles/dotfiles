set --append fish_user_paths /opt/homebrew/bin /opt/homebrew/sbin /opt/homebrew/opt/git/share/git-core/contrib/git-jump

set -gx HOMEBREW_EDITOR $EDITOR

# Enable fzf integration with fish (e.g., fuzzy find git files, etc.)
source /opt/homebrew/opt/fzf/shell/key-bindings.fish

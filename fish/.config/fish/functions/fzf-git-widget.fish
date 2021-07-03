function fzf-git-widget
    set --global FZF_CTRL_T_COMMAND "git ls-files --deduplicate \$dir"
    fzf-file-widget
    set --global --erase FZF_CTRL_T_COMMAND
end

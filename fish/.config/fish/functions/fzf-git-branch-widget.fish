function fzf-git-branch-widget
    set --global FZF_CTRL_T_COMMAND 'git for-each-ref --format='\''%(refname:short)'\'
    fzf-file-widget
    set --global --erase FZF_CTRL_T_COMMAND
end

function fzf-git-branch-widget
    set --local --export FZF_CTRL_T_COMMAND 'git for-each-ref --format='\''%(refname:short)'\'
    set --local --export FZF_CTRL_T_OPTS "--prompt='Git Branches> '"

    fzf-file-widget
end

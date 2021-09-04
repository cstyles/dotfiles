function fzf-git-widget
    set --local --export FZF_CTRL_T_COMMAND "git ls-files --deduplicate \$dir"
    set --local --export FZF_CTRL_T_OPTS "--prompt='Git Files> '"

    fzf-file-widget
end

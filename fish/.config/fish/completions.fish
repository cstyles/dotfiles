# These need to be defined here (and not in `completions/git.fish`) because
# otherwise the `__fish_git_using_command` function won't be available yet,
# presumably because the main `git` completions are loaded later.

complete -f -c git -n '__fish_git_using_command snipe' -ka '(__fish_git_recent_commits)'
complete -f -c git -n '__fish_git_using_command split' -ka '(__fish_git_recent_commits)'
complete -f -c git -n '__fish_git_using_command restack' -ka '(__fish_git_branches)'

# git-jump:
complete -f -c git -n '__fish_git_using_command jump; and not __fish_seen_subcommand_from diff merge grep' -a 'diff merge grep'
complete -f -c git -n '__fish_git_using_command jump; and __fish_seen_subcommand_from diff merge grep' -ka '(__fish_git_recent_commits)'

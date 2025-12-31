# These need to be defined here (and not in `completions/git.fish`) because
# otherwise the `__fish_git_using_command` function won't be available yet,
# presumably because the main `git` completions are loaded later.

complete -f -c git -n '__fish_git_using_command snipe' -ka '(__fish_git_recent_commits)'
complete -f -c git -n '__fish_git_using_command split' -ka '(__fish_git_recent_commits)'
complete -f -c git -n '__fish_git_using_command restack' -ka '(__fish_git_branches)'

# This function is basically just __fish_list_current_token but for git status

function __fish_git_status_current_token -d "Show git status of the directory under the cursor if it is a directory, otherwise show git status of the current directory"
    set val (eval echo (commandline -t))
    printf "\n"
    if test -d $val 2>/dev/null
        cd $val
        git status
        prevd > /dev/null
    else
        set dir (dirname $val)
        if test $dir != . -a -d $dir
            cd $dir
            git status
            prevd > /dev/null
        else
            git status
        end
    end

    set -l line_count (count (fish_prompt))
    if test $line_count -gt 1
        for x in (seq 2 $line_count)
            printf "\n"
        end
    end

    commandline -f repaint
end

function __fish_grep_pipe
    # Choose a grep-like program to use
    set -l cmd grep
    if set -q fish_grep
        set cmd $fish_grep
    end

    # If command line is empty, populate it with the last command
    if test -z (commandline -j)
        commandline -a $history[1]
    end

    # Only edit the command if we haven't already
    if commandline -j | string match -q -r -v "$cmd *\$"
        # Add a space unless there's already one at the end of the line
        if commandline -j | string match -q -r -v " \$"
            commandline --append --current-job " "
        end

        commandline --append --current-job "| $cmd "

        # Go to end of line
        commandline --cursor 999999
    end
end

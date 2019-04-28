function __fish_wc_pipe
    # If command line is empty, populate it with the last command
    if test -z (commandline -j)
        commandline -a $history[1]
    end

    # Only edit the command if we haven't already
    if commandline -j | string match -q -r -v "wc -l *\$"
        # Add a space unless there's already one at the end of the line
        if commandline -j | string match -q -r -v " \$"
            commandline --append --current-job " "
        end

        commandline --append --current-job "| wc -l "

        # Go to end of line
        commandline --cursor 999999
    end
end

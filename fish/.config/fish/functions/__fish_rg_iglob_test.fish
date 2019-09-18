function __fish_rg_iglob_test
    set --local filter "--iglob !test"

    # If command line is empty, populate it with the last command
    if test -z (commandline --current-job)
        commandline --append $history[1]
    end

    # Only edit the command if we haven't already
    if commandline --current-job | string match --quiet --regex --invert -- "$filter *\$"
        # Add a space unless there's already one at the end of the line
        if commandline --current-job | string match --quiet --regex --invert " \$"
            commandline --append --current-job " "
        end

        commandline --append --current-job -- "$filter"

        # Go to end of line
        commandline --cursor 999999
    end
end

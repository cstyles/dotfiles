function __insert_previous_command
    # If command line is empty, insert the previous command but keep the cursor
    # at the beginning of the line.
    if test -z (commandline -j)
        set move_cursor_to_beginning true
    end

    # Append whitespace if there isn't any at the end of the line
    if commandline --current-job | string match --quiet --regex '\s+$'
        commandline --append '('
    else
        commandline --append ' ('
    end

    # TODO: Cycle through previous commands?
    commandline --append $history[1]
    commandline --append ')'

    if test "$move_cursor_to_beginning" = true 
        commandline --cursor 0
    else
        # Go to end of line
        commandline --cursor 999999
    end
end

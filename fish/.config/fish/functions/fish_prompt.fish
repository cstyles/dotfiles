function fish_prompt --description 'Write out the prompt'
    set --local saved_status $status

    switch "$USER"
        case root toor
            set prompt_symbol '#'
        case '*'
            set prompt_symbol '$'
    end

    set git_prompt (__fish_git_prompt)

    # TODO: root user should be colored red

    # NOTE: The ""s around the variables are important because if the variable
    # is empty, it will evaluate to an empty string and be interpolated
    # correctly. Without the ""s, it will evaluate to nothing and throw off
    # the alignment of the interpolation (i.e., all the subsequent '%s's will
    # be shifted over by one.
    printf "[%s%s%s@%s%s %s%s%s%s] %s%s %s" \
             (set_color --bold cyan) \
               "$USER" \
                 (set_color normal) \
                    (set_color --bold green) \
                      (prompt_hostname) \
                         (set_color brblue) \
                           (prompt_pwd) \
                             (set_color normal) \
                               "$git_prompt" \
                                   (set_color brred) \
                                     "$prompt_symbol" \
                                        (set_color normal)
end

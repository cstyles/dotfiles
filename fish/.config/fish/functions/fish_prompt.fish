function fish_prompt --description 'Write out the prompt'
	set -l home_escaped (echo -n $HOME | sed 's/\//\\\\\//g')
    set -l pwd (echo -n $PWD | sed "s/^$home_escaped/~/" | sed 's/ /%20/g')
    set -l prompt_symbol ''
    switch "$USER"
        case root toor
            set prompt_symbol '#'
        case '*'
            set prompt_symbol '$'
    end
    printf "[%s%s%s@%s%s %s%s%s] %s%s %s" (set_color --bold cyan) $USER (set_color normal) (set_color --bold green) (prompt_hostname) (set_color brblue) $pwd (set_color normal) (set_color brred) $prompt_symbol (set_color normal)
end

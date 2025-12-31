function rgg --wraps rg --description "ripgrep but only on files tracked in git"
    # TODO: allow running from non-git root
    git ls-files -z | xargs -0 rg $argv
end

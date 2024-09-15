function rgg --wraps rg --description "ripgrep but only on files tracked in git"
    # TODO: allow running from non-git root
    rg $argv (git ls-files)
end

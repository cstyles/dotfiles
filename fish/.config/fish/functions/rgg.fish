function rgg --wraps rg --description "ripgrep but only on files tracked in git"
    git  ls-files -z (git root) | xargs -0 rg $argv
end

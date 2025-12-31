function rgg --wraps rg --description "ripgrep but only on files tracked in git"
    git -C (git root) ls-files -z | xargs -0 rg $argv
end

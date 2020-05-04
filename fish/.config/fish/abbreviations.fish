abbr --global --add g git
abbr --global --add v vim
abbr --global --add n nvim
abbr --global --add nt nvim-term
abbr --global --add be bundle exec

abbr --global --add rgh rg --hidden
abbr --global --add dushcsh 'du -shc * | sort -h'

abbr --global --add cddot cd ~/dev/dotfiles

# Git:
abbr --global --add ga git add
abbr --global --add gab git absorb
abbr --global --add gabn git absorb --verbose --dry-run
abbr --global --add gabr git absorb --verbose --and-rebase
abbr --global --add gap git add --patch
abbr --global --add gb git branch
abbr --global --add gbl git blame
abbr --global --add gbr git branch
abbr --global --add gbrm git branch --move
abbr --global --add gbrsu git branch --set-upstream-to origin/\(git rev-parse --abbrev-ref HEAD\)
abbr --global --add gbrv git branch --verbose
abbr --global --add gca git commit --amend
abbr --global --add gcan git commit --amend --no-edit
abbr --global --add gci git commit
abbr --global --add gcb git checkout -b
abbr --global --add gcf git commit --fixup
abbr --global --add gcfg git config --edit
abbr --global --add gcl git clone
abbr --global --add gco git checkout
abbr --global --add gcp git cherry-pick
abbr --global --add gd git diff
abbr --global --add gdc git diff --cached
abbr --global --add gdhu git diff HEAD @{u}
abbr --global --add gduh git diff @{u} HEAD
abbr --global --add gf git fetch
abbr --global --add gfa git fetch --all
abbr --global --add gg git graph
abbr --global --add gl git log
abbr --global --add glo git log --oneline
abbr --global --add glp git log --patch
abbr --global --add glpr git log --patch --reverse
abbr --global --add gm git merge
abbr --global --add gma git merge --abort
abbr --global --add gp git push
abbr --global --add gpu git push --set-upstream origin HEAD
abbr --global --add gpl git pull
abbr --global --add gr git reset
abbr --global --add gra git rebase --abort
abbr --global --add grb git rebase
abbr --global --add grc git rebase --continue
abbr --global --add grd git range-diff
abbr --global --add gre git restore
abbr --global --add gref git reflog
abbr --global --add grem git remote
abbr --global --add gres git restore --staged
abbr --global --add grev git revert
abbr --global --add grh git reset --hard
abbr --global --add grhu git reset --hard "'@{u}'"
abbr --global --add gri git rebase --interactive
abbr --global --add grs git rebase --skip
abbr --global --add grv git remote --verbose
abbr --global --add gs git show
abbr --global --add gsc git switch --create
abbr --global --add gsl git stash list
abbr --global --add gss git stash show -p
abbr --global --add gst git status
abbr --global --add gsw git switch
abbr --global --add gswd git show --word-diff
abbr --global --add gwd git diff --word-diff
abbr --global --add gwdc git diff --word-diff --cached
abbr --global --add gwt git worktree

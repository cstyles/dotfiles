abbr --global --add c cargo
abbr --global --add g git
abbr --global --add v vim
abbr --global --add n nvr
abbr --global --add nt nvim-term
abbr --global --add lesss less -S

abbr --global --add b bundle
abbr --global --add be bundle exec
abbr --global --add bi bundle install
abbr --global --add bil bundle install --local
abbr --global --add bu bundle update
abbr --global --add buc bundle update --conservative

abbr --global --add rgh rg --hidden
abbr --global --add rgc rg --color=always
abbr --global --add rgs rg --sort=path
abbr --global --add rgsw rg --sort=path --word-regexp
abbr --global --add rgw rg --word-regexp

abbr --global --add dushcsh 'du -shc * | sort -h'
abbr --global --add ltr 'exa --long --sort=modified'

# git:
abbr --global --add ga git add
abbr --global --add gab git absorb
abbr --global --add gabn git absorb --dry-run
abbr --global --add gabr git absorb --and-rebase
abbr --global --add gap git add --patch
abbr --global --add gb git branch
abbr --global --add gbd git branch -d
abbr --global --add gbf git branch --force
abbr --global --add gbi git bisect
abbr --global --add gbl git blame
abbr --global --add gbm git branch --move
abbr --global --add gbsu git branch --set-upstream-to origin/\(git rev-parse --abbrev-ref HEAD\)
abbr --global --add gbv git branch --verbose
abbr --global --add gca git commit --amend
abbr --global --add gcan git commit --amend --no-edit
abbr --global --add gcb git checkout -b
abbr --global --add gcf git commit --fixup
abbr --global --add gcfg git config --edit
abbr --global --add gci git commit
abbr --global --add gcl git clone
abbr --global --add gcle git clean
abbr --global --add gco git checkout
abbr --global --add gcp git cherry-pick
abbr --global --add gd git diff
abbr --global --add gdc git diff --cached
abbr --global --add gdhu git diff HEAD @{upstream}
abbr --global --add gdod git diff origin/develop
abbr --global --add gdom git diff origin/master
abbr --global --add gduh git diff @{upstream} HEAD
abbr --global --add gf git fetch
abbr --global --add gfa git fetch --all
abbr --global --add gg git graph
abbr --global --add gl git log
abbr --global --add glo git log --oneline
abbr --global --add glod git log origin/develop
abbr --global --add glom git log origin/master
abbr --global --add glou git log --oneline @{upstream}
abbr --global --add glrod git log --reverse origin/develop..
abbr --global --add glrom git log --reverse origin/master..
abbr --global --add glp git log --patch
abbr --global --add glpg git log --patch -G
abbr --global --add glpr git log --patch --reverse
abbr --global --add glprd git log --patch --reverse develop..
abbr --global --add glprm git log --patch --reverse master..
abbr --global --add glprod git log --patch --reverse origin/develop..
abbr --global --add glprom git log --patch --reverse origin/master..
abbr --global --add glpru git log --patch --reverse @{upstream}..
abbr --global --add glpu git log --patch @{upstream}
abbr --global --add glu git log @{upstream}
abbr --global --add gm git merge
abbr --global --add gma git merge --abort
abbr --global --add gmb git merge-base
abbr --global --add gmv git mv
abbr --global --add gp git push
abbr --global --add gpd git push origin --delete
abbr --global --add gpf git push --force-with-lease
abbr --global --add gpl git pull
abbr --global --add gpu git push --set-upstream origin HEAD
abbr --global --add gr git reset
abbr --global --add gra git rebase --abort
abbr --global --add grb git rebase
abbr --global --add grbo git rebase --onto
abbr --global --add grbod git rebase origin/develop
abbr --global --add grbom git rebase origin/master
abbr --global --add grc git rebase --continue
abbr --global --add grd git range-diff
abbr --global --add grdhu git range-diff origin/develop HEAD @{upstream}
abbr --global --add grduh git range-diff origin/develop @{upstream} HEAD
abbr --global --add grdmhu git range-diff origin/master HEAD @{upstream}
abbr --global --add grdmuh git range-diff origin/master @{upstream} HEAD
abbr --global --add gre git restore
abbr --global --add gref git reflog
abbr --global --add grem git remote
abbr --global --add grep git restore --patch
abbr --global --add gres git restore --staged
abbr --global --add gresp git restore --staged --patch
abbr --global --add grev git revert
abbr --global --add grh git reset --hard
abbr --global --add grhh git reset --hard HEAD
abbr --global --add grhp git reset --hard HEAD^ # p = parent
abbr --global --add grhu git reset --hard @{upstream}
abbr --global --add gri git rebase --interactive
abbr --global --add grid git rebase --interactive develop
abbr --global --add grim git rebase --interactive master
abbr --global --add griod git rebase --interactive origin/develop
abbr --global --add griom git rebase --interactive origin/master
abbr --global --add grm git rm
abbr --global --add grs git reset --soft
abbr --global --add grsp git reset --soft HEAD^
abbr --global --add gru git rebase --interactive @{upstream}
abbr --global --add grv git remote --verbose
abbr --global --add gs git status
abbr --global --add gsc git switch --create
abbr --global --add gsd git switch --detach
abbr --global --add gsdp git switch --detach HEAD^ # p = parent
abbr --global --add gsdu git switch --detach @{upstream}
abbr --global --add gsfc git switch --force-create
abbr --global --add gsl git stash list
abbr --global --add gsh git show
abbr --global --add gshu git show @{upstream}
abbr --global --add gsp git split
abbr --global --add gss git stash show -p
abbr --global --add gst git stash
abbr --global --add gsts git stash --staged
abbr --global --add gsw git switch
abbr --global --add gswd git switch --detach
abbr --global --add gwd git diff --word-diff
abbr --global --add gwdc git diff --word-diff --cached
abbr --global --add gwt git worktree

# cargo:
abbr --global --add ca cargo add
abbr --global --add cb cargo build
abbr --global --add cbr cargo build --release
abbr --global --add cc cargo check
abbr --global --add ccl cargo clippy
abbr --global --add ce cargo expand
abbr --global --add cf cargo fix
abbr --global --add ci cargo install --path .
abbr --global --add cm cargo make
abbr --global --add cn cargo new
abbr --global --add cr cargo run
abbr --global --add crr cargo run --release
abbr --global --add ct cargo test
abbr --global --add cw cargo watch

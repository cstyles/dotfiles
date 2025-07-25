abbr --global --add c cargo
abbr --global --add d docker
abbr --global --add g git
abbr --global --add k kubectl
abbr --global --add v vim
abbr --global --add n nvr
abbr --global --add h hgrep
abbr --global --add ns nvim-just-term
abbr --global --add nt nvim-term
abbr --global --add lesss less -S
abbr --global --add dc docker compose
abbr --global --add wi wezterm imgcat

abbr --global --add b bundle
abbr --global --add be bundle exec
abbr --global --add bi bundle install
abbr --global --add bil bundle install --local
abbr --global --add bu bundle update
abbr --global --add buc bundle update --conservative

abbr --global --add rgc rg --color=always
abbr --global --add rgh rg --hidden
abbr --global --add rgs rg --sort=path
abbr --global --add rgsw rg --sort=path --word-regexp
abbr --global --add rgw rg --word-regexp

abbr --global --add fd1 fd --exact-depth=1
abbr --global --add fdc fd --color=always

abbr --global --add dushcsh 'du -shc * | sort -h'
abbr --global --add ltr 'eza --long --sort=modified'

# git:
abbr --global --add ga git add
abbr --global --add gab git absorb
abbr --global --add gabn git absorb --dry-run
abbr --global --add gabr git absorb --and-rebase
abbr --global --add gap git add --patch
abbr --global --add gau git add --update
abbr --global --add gb git branch
abbr --global --add gba git branch --all
abbr --global --add gbd git branch -d
abbr --global --add gbD git branch -D
abbr --global --add gbf git branch --force
abbr --global --add gbfm git branch --force main main@{upstream}
abbr --global --add gbi git bisect
abbr --global --add gbl git blame
abbr --global --add gbm git branch --move
abbr --global --add gbsu git branch --set-upstream-to origin/\(git rev-parse --abbrev-ref HEAD\)
abbr --global --add gbv git branch --verbose
abbr --global --add gca git commit --amend
abbr --global --add gcan git commit --amend --no-edit
abbr --global --add gcao git commit --amend --only
abbr --global --add gcf git commit --fixup
abbr --global --add gcfg git config
abbr --global --add gcfp git commit --fixup HEAD^
abbr --global --add gci git commit
abbr --global --add gcip git commit --patch
abbr --global --add gcl git clone
abbr --global --add gcle git clean
abbr --global --add gcp git cherry-pick
abbr --global --add gcpa git cherry-pick --abort
abbr --global --add gcpc git cherry-pick --continue
abbr --global --add gd git diff
abbr --global --add gdc git diff --cached
abbr --global --add gdcn git diff --cached --name-only
abbr --global --add gdcw git diff --cached --ignore-all-space
abbr --global --add gdhu git diff HEAD @{upstream}
abbr --global --add gdm git diff main
abbr --global --add gdmb git diff \(git merge-base origin/main HEAD\) HEAD
abbr --global --add gdmbu git diff \(git merge-base origin/main HEAD\) @{upstream}
abbr --global --add gdn git diff --name-only
abbr --global --add gdom git diff origin/main
abbr --global --add gdomn git diff origin/main --name-only
abbr --global --add gds git diff --staged
abbr --global --add gdsn git diff --staged --name-only
abbr --global --add gdst git diff --stat
abbr --global --add gdsw git diff --staged --ignore-all-space
abbr --global --add gduh git diff @{upstream} HEAD
abbr --global --add gdw git diff --ignore-all-space
abbr --global --add gf git fetch
abbr --global --add gfa git fetch --all
abbr --global --add gg git graph
abbr --global --add ggo git gone
abbr --global --add ggp git gone prune
abbr --global --add ggr git grep
abbr --global --add gj git jump
abbr --global --add gjd git jump diff
abbr --global --add gjg git jump grep
abbr --global --add gjm git jump merge
abbr --global --add gjsh git jump diff HEAD^ HEAD
abbr --global --add gl git log
abbr --global --add glfp git log --first-parent
abbr --global --add glg git log --grep
abbr --global --add glG git log -G
abbr --global --add gln git log --name-only
abbr --global --add glo git log --oneline
abbr --global --add glog git log --oneline --graph
abbr --global --add glom git log origin/main
abbr --global --add gloom git log --oneline origin/main
abbr --global --add glou git log --oneline @{upstream}
abbr --global --add glr git log --reverse
abbr --global --add glrhu git log --reverse ..@{upstream}
abbr --global --add glrm git log --reverse main..
abbr --global --add glro git log --reverse --oneline
abbr --global --add glrom git log --reverse origin/main..
abbr --global --add glroom git log --reverse --oneline origin/main..
abbr --global --add glp git log --patch
abbr --global --add glpfd git log --patch --full-diff --no-follow
abbr --global --add glpfp git log --patch --first-parent
abbr --global --add glpg git log --patch -G
abbr --global --add glpm git log --patch main
abbr --global --add glpom git log --patch origin/main
abbr --global --add glpr git log --patch --reverse
abbr --global --add glprhu git log --patch --reverse ..@{upstream}
abbr --global --add glprm git log --patch --reverse main..
abbr --global --add glprom git log --patch --reverse origin/main..
abbr --global --add glpru git log --patch --reverse @{upstream}..
abbr --global --add glpruh git log --patch --reverse @{upstream}..HEAD
abbr --global --add glpu git log --patch @{upstream}
abbr --global --add glpw git log --patch --ignore-all-space
abbr --global --add glru git log --reverse @{upstream}..
abbr --global --add gls git ls-files
abbr --global --add glu git log @{upstream}
abbr --global --add gm git merge
abbr --global --add gma git merge --abort
abbr --global --add gmb git merge-base
abbr --global --add gmbom git merge-base origin/main HEAD
abbr --global --add gmbu git merge-base origin/main @{upstream}
abbr --global --add gme git meld
abbr --global --add gmes git meld snipe
abbr --global --add gmv git mv
abbr --global --add gp git push
abbr --global --add gpd git push origin --delete
abbr --global --add gpf git push --force-with-lease
abbr --global --add gpl git pull
abbr --global --add gpu git push --set-upstream origin HEAD
abbr --global --add gpuc git push --set-upstream cstyles HEAD
abbr --global --add gr git reset
abbr --global --add gra git rebase --abort
abbr --global --add grb git rebase
abbr --global --add grbmb git rebase \(git merge-base origin/main HEAD\)
abbr --global --add grbm git rebase main
abbr --global --add grbo git rebase --onto
abbr --global --add grbom git rebase origin/main
abbr --global --add grbs git rebase --skip
abbr --global --add grc git rebase --continue
abbr --global --add grd git range-diff
abbr --global --add grdhu git range-diff origin/main HEAD @{upstream}
abbr --global --add grdom git range-diff origin/main
abbr --global --add grduh git range-diff origin/main @{upstream} HEAD
abbr --global --add gre git restore
abbr --global --add gref git reflog
abbr --global --add grem git remote
abbr --global --add grep git restore --patch
abbr --global --add gres git restore --staged
abbr --global --add gresp git restore --staged --patch
abbr --global --add grest git restack
abbr --global --add gresw git restore --staged --worktree
abbr --global --add greswp git restore --staged --worktree --patch
abbr --global --add grev git revert
abbr --global --add grh git reset --hard
abbr --global --add grhh git reset --hard HEAD
abbr --global --add grhp git reset --hard HEAD^ # p = parent
abbr --global --add grhpp git reset --hard HEAD^^ # p = parent
abbr --global --add grhu git reset --hard @{upstream}
abbr --global --add gri git rebase --interactive
abbr --global --add grim git rebase --interactive main
abbr --global --add grimb git rebase --interactive \(git merge-base origin/main HEAD\)
abbr --global --add griom git rebase --interactive origin/main
abbr --global --add grir git rebase --interactive --root
abbr --global --add grm git rm
abbr --global --add grp git reset HEAD^
abbr --global --add grs git reset --soft
abbr --global --add grsp git reset --soft HEAD^
abbr --global --add grsu git reset --soft @{upstream}
abbr --global --add gru git rebase --interactive @{upstream}
abbr --global --add grv git remote --verbose
abbr --global --add grvp git rev-parse HEAD
abbr --global --add gs git status
abbr --global --add gsc git switch --create
abbr --global --add gsd git switch --detach
abbr --global --add gsdp git switch --detach HEAD^ # p = parent
abbr --global --add gsdu git switch --detach @{upstream}
abbr --global --add gsfc git switch --force-create
abbr --global --add gsl git stash list
abbr --global --add gsh git show
abbr --global --add gshn git show --name-only
abbr --global --add gsho git diff-tree --name-only --no-commit-id -r HEAD
abbr --global --add gshp git show HEAD^ # p = parent
abbr --global --add gshpp git show HEAD^^ # p = parent
abbr --global --add gshst git show --stat
abbr --global --add gshu git show @{upstream}
abbr --global --add gshw git show --ignore-all-space
abbr --global --add gsn git snipe
abbr --global --add gsnp git snipe HEAD^ # p = parent
abbr --global --add gsp git split
abbr --global --add gss git stash show -p
abbr --global --add gst git stash
abbr --global --add gstp git stash --patch
abbr --global --add gsts git stash --staged
abbr --global --add gsub git submodule
abbr --global --add gsw git switch
abbr --global --add gswd git switch --detach
abbr --global --add gwd git diff --word-diff
abbr --global --add gwdc git diff --word-diff --cached
abbr --global --add gwt git worktree

abbr --add H --position=anywhere --function=__abbr_git_head
abbr --add P --position=anywhere --function=__abbr_git_parent
abbr --add PP --position=anywhere --function=__abbr_git_parent_parent
abbr --add O --position=anywhere --function=__abbr_git_origin
abbr --add OM --position=anywhere --function=__abbr_git_origin_main
abbr --add git_upstream --regex='.*@[uU]$' --position=anywhere --function=__abbr_git_upstream

function __abbr_git
  # Only replace the abbreviation if we're inside a git command
  if commandline --current-process | string match --quiet --regex '^git '
    echo $argv[1]
  else
    return 1
  end
end

function __abbr_git_head
  __abbr_git HEAD
end

function __abbr_git_parent
  __abbr_git HEAD^
end

function __abbr_git_parent_parent
  __abbr_git HEAD^^
end

function __abbr_git_origin
  __abbr_git origin
end

function __abbr_git_origin_main
  __abbr_git origin/main
end

function __abbr_git_upstream
  set output (
  # FIXME: This breaks if you're putting @u after a token that isn't at the end of the line.
  # e.g., typing here ----------V
  # git range-diff origin branch@u HEAD
    set current_token (commandline --current-process --tokenize)[-1];
    string replace --regex '@[uU]' @{upstream} -- "$current_token"
  )
  __abbr_git "$output"
end

# cargo:
abbr --global --add ca cargo add
abbr --global --add cb cargo build
abbr --global --add cbr cargo build --release
abbr --global --add cc cargo check
abbr --global --add ccat cargo check --all-targets
abbr --global --add ccl cargo clippy
abbr --global --add cclat cargo clippy --all-targets
abbr --global --add cclt cargo clippy --tests
abbr --global --add cct cargo check --tests
abbr --global --add ce cargo expand
abbr --global --add cf cargo fmt
abbr --global --add ci cargo install --path .
abbr --global --add cm cargo make
abbr --global --add cn cargo new
abbr --global --add cr cargo run
abbr --global --add crr cargo run --release
abbr --global --add ct cargo test
abbr --global --add ctr cargo test --release
abbr --global --add cu cargo update
abbr --global --add cw cargo watch

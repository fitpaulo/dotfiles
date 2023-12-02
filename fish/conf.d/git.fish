set default_branch master

alias g="git"

alias ga="git add"
alias gaa="git add ."

alias gb="git branch"
alias gbm="git branch --merged"
alias gbnm="git branch --no-merged"
alias gbd="git branch -d" # Delete a branch
alias gbdf="git branch -D" # -D = --delete --force

alias gcam="git commit -a -m"

alias gco="git checkout"
alias gcob="git checkout -b"
alias gcom="git checkout main"

alias gdiff="git diff"

alias gstash="git stash"
alias gpop="git stash pop"

alias grb="git rebase"
alias grbi="git rebase -i"

alias gst="git status"

alias gp="git push"
alias gpu="git push --set-upstream origin"

alias gpl="git pull"

alias gta="git tag -a"
alias gtl="git tag -l"

# A function to tag and add tag message
function gtam 
    # $1 TagName
    # $2 Message
    git tag -a "$argv[1]" -m "$argv[2]"
end

function git-prune-merged
    set skip \
        main \
        dev \
        master

    set skip (string join '|' $skip)
    set skip (string join '' '(' $skip ')')

    gbm | grep -Ev $skip | xargs git branch -d
end

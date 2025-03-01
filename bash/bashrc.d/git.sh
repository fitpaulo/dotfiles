default_branch=master

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

alias gst="git status"

alias gp="git push"
alias gpu="git push --set-upstream origin"

alias gpl="git pull"

alias gta="git tag -a"
alias gtl="git tag -l"

# A function to tag and add tag message
gtam() {
    # $1 TagName
    # $2 Message
    git tag -a "$1" -m "$2"
}

git-prune-merged() {
    local skip=(
        "main"
        "dev"
        "master"
    )

    local to_skip="("
    for file in "${skip[@]}"
    do
        to_skip+="$file|"
    done
    to_skip="${to_skip:0:${#to_skip} - 1}" # Chomp trailing |
    to_skip+=")" 

    gbm | grep -Ev "$to_skip" | xargs git branch -d
}


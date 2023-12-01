default_branch=master

alias g="git"

alias ga="git add"
alias gaa="git add ."

alias gcam="git commit -a -m"

alias gco="git checkout"
alias gcob="git checkout -b"
alias gcom="git checkout main"

alias gdiff="git diff"

alias gst="git status"

alias gp="git push"
alias gpu="git push --set-upstream origin"

alias gpl="git pull"

alias gta="git tag -a"
alias gtl="git tag -l"

# A function to tag and add tag message
gtam() {
    git tag -a "$1" -m "$2"
}

default_branch=master

alias ga="git add"
alias gaa="git add -a"

alias gst="git status"

alias gcam="git commit -a -m"

alias gco="git checkout origin"
alias gcb="git checkout -b"

alias gp="git push"

alias gpl="git pull"

alias gta="git tag -a"
alias gtl="git tag -l"

# A function to tag and add tag message
gtam() {
    git tag -a "$1" -m "$2"
}

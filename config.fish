## Set values
# Hide welcome message
# From the dudes at garuda
set fish_greeting
set VIRTUAL_ENV_DISABLE_PROMPT "1"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# The above manpager does not work in fedora.
if string length -q $(cat /etc/*-release | grep Fedora)
  function man 
    command man $argv | eval $MANPAGER
  end
end

# Source our fish profile
source ~/.fish_profile

# Let us change the way ls works
alias ls "exa --color=always --icons --group-directories-first"
alias ll "exa --color=always --icons --group-directories-first -lh"
alias la "exa --color=always --icons --group-directories-first -a"
alias lla "exa --color=always --icons --group-directories-first -lh -a"
alias lz "/usr/bin/ls -lhsZ --color=always"
alias l. 'la | grep "\."'
alias ll. 'lla | grep "\."'

# Git aliases
set defaultBranch $(git config --get init.defaultBranch || echo "master")
alias g "git"
alias gst "git status"
alias gcam "git commit -a -m"
alias ga "git add"
alias gaa "git add --all"
alias gca "git commit -a"
alias gcm "git commit -m"
alias gcob "git checkout -b"
alias gpl "git pull"
alias gp "git push"
alias gpf "git push -f"
alias gpo "git push origin"
alias grbi "git rebase -i"
alias gdiff "git diff"
alias gb "git branch"
alias gco "git checkout"
alias gcom "git checkout $defaultBranch"
alias gs "git stash"
alias gspop "git stash pop"
alias grbim "git rebase -i $defaultBranch"

# Let's make cat awesome
# remeber to give a -p or -pp to get std output i.e. to copy many lines
alias cat bat
alias cath "bat --style header,header-filesize -fP"
alias catp "bat -p"
alias catd "bat --diff"

# DO NOT USE NANO
set -gx EDITOR /usr/bin/vim

## Run fastfetch if session is interactive
if status --is-interactive && type -q fastfetch
    fastfetch --load-config neofetch
end

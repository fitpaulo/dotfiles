# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:$HOME/.cargo/bin" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH:$HOME/.cargo/bin"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

# set an ad-hoc GUI timer
timer() {
  local N="$1"; shift

  (sleep "$N" && (zenity --info --text="BING")) &
  echo "timer set for $N"
}

# GPG
GPG_TTY=$(tty)
export GPG_TTY

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias exa="exa --icons=auto --color=auto"
alias ssh="kitten ssh"
alias open=xdg-open

# Set up asdf
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

# Default editor
export VISUAL=hx
export EDITOR="$VISUAL"

# ssh agent 
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/gcr/ssh"

# Starship
eval "$(starship init bash)"
unset rc

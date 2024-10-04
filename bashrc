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

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

# GPG
GPG_TTY=$(tty)
export GPG_TTY

# Set up asdf
#. "$HOME/.asdf/asdf.sh"
#. "$HOME/.asdf/completions/asdf.bash"

# Default editor
export VISUAL=hx
export EDITOR="$VISUAL"

# ssh agent 
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/gcr/ssh"

# Starship
eval "$(starship init bash)"
unset rc

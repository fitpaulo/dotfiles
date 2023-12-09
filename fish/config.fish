if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

export EDITOR=hx
export VISUAL=hx
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"

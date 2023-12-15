if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source

    # SSH agent needs to be started, lets use keychain
    # To add a key, set -Ua SSH_KEYS_TO_AUTOLOAD keypath
    # To remove a key, set -U --erase SSH_KEYS_TO_AUTOLOAD[index_of_key]
    keychain --eval $SSH_KEYS_TO_AUTOLOAD >/dev/null 2>&1 | source
end


set EDITOR hx
set VISUAL hx

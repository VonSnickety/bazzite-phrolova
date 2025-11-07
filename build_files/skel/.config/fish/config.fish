# ~/.config/fish/config.fish

# Run fastfetch on terminal startup
if status is-interactive; and type -q fastfetch
    fastfetch
end

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lah'
alias grep='grep --color=auto'

# Enable Vi key bindings (optional)
# fish_vi_key_bindings

# Set greeting to empty (fastfetch will be our greeting)
set fish_greeting

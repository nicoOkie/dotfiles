if status is-interactive
    alias dn="dotnet"
    alias dnn="dotnet new"
    set fish_greeting ""
end
starship init fish | source

# Added by get-aspire-cli.sh
fish_add_path $HOME/.aspire/bin

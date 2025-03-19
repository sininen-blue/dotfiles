if status is-interactive
    starship init fish | source

    source $HOME/.cargo/env.fish
    fish_add_path $HOME/.local/bin/
end

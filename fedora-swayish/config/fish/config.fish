if status is-interactive
    fish_add_path ~/bin
    
    bind \ec 'cd $(find -O3 . -type d -path ./drive -prune -o -print | fzf) | commandline -f repaint'
    starship init fish | source
end

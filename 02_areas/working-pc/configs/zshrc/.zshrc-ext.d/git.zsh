
git-log-fzf() {
    local commit_hash
    commit_hash=$(git log --oneline --decorate | fzf --height 40% --reverse | awk '{print $1}')
    if [[ -n "$commit_hash" ]]; then
        # Insert the commit hash at the current cursor position
        LBUFFER+="$commit_hash"
        zle redisplay
    fi
}

# Turn the function into a zsh widget
zle -N git-log-fzf

# bind widget to a key, e.g., <C-g> + l
bindkey '^gl' git-log-fzf

alias lg=lazygit
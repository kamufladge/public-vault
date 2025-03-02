
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="amuse"

source "$HOME/.zshrc-ext.d/thefuck.zsh"

plugins=(git fzf tmux tmuxinator zsh-interactive-cd thefuck pyenv)

source $ZSH/oh-my-zsh.sh

# my extensions
export PATH=$HOME/dev/bin:$PATH
source "$HOME/.zshrc-ext.d/nvim.zsh"
source "$HOME/.zshrc-ext.d/bat.zsh"
source "$HOME/.zshrc-ext.d/git.zsh"
source "$HOME/.zshrc-ext.d/vault.zsh"
source "$HOME/.zshrc-ext.d/zephyr.zsh"



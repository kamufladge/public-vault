
# Streaming

- OBSStudio
- VLC Player

# Programming

- VSCode
    - vim binding
- JetBrains Rider
    - vim binding
- neovim


## C/C++

- ninja 

# Networking

- wireshark 
- httpyac
- tcpdump

# Work of life

- 1password
- zsh with ohmyzsh
- NerdFont Jetbrains Mono
- thefuck
- tmux
- tmuxinator
- fzf
- ripgrep
- [lazygit](https://github.com/jesseduffield/lazygit)
- jq
- thefuck

# install tools

## install basic packages
``sudo apt-get update && sudo apt-get -y install wget curl python3 python3-pip fzf jq ripgrep git nodejs npm ninja-build cmake g++ tcpdump git-delta bat tmuxinator``

## thefuck
installation does not work with [apt in ubuntu LTS 24.04](https://github.com/nvbn/thefuck/issues/1434#issuecomment-2108618450)
``pip install https://github.com/nvbn/thefuck/archive/master.zip --break-system-packages``

# set new defaults

## sudo password prompt timout

add content to visudo, **number** is timeout in **minutes**
``Defaults timestamp_timeout=(number)``
```
cd /etc/sudoers.d
sudo visudo -f kamu
```
manpage: ``man 5 sudoers``

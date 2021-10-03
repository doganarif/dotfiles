export ZSH="/Users/arifdogan/.oh-my-zsh"

ZSH_THEME="spaceship"
plugins=(git)

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"

# ALIASES
alias vpn="sudo openvpn --config ~/.vpn/client.ovpn --auth-user-pass ~/.vpn/.vpn_credentials"
alias vim="nvim"
alias gfl="git-flow"
alias xx="exit"
alias c="clear"


# EXPORTS
export GPG_TTY=$(tty)
export NVM_DIR="$HOME/.nvm"
export PATH=$(brew --prefix openvpn)/sbin:$PATH
export GOPATH=$HOME/work
export GOROOT=/usr/local/go

export PATH=$PATH:$GOPATH/bin

# NVM Init
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

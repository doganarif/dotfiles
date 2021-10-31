fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

export ZSH="/Users/arifdogan/.oh-my-zsh"

ZSH_THEME="spaceship"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting docker docker-compose autoswitch_virtualenv)

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"

# ALIASES
alias vpn="sudo openvpn --config ~/.vpn/client.ovpn --auth-user-pass ~/.vpn/.vpn_credentials"
alias vim="nvim"
alias gfl="git-flow"
alias xx="exit"
alias c="clear"
alias rr="source ~/.zshrc"
alias gwd="gh run list --workflow deploy-development.yml"
alias gwp="gh run list --workflow deploy-production.yml"
# EXPORTS
export GPG_TTY=$(tty)
export NVM_DIR="$HOME/.nvm"
export PATH=$(brew --prefix openvpn)/sbin:$PATH
export GOPATH=$HOME/work
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin


export DB_NAME=tenlift
export DB_USER=postgres
export DB_PASSWORD=afoafoafo1A.
export DB_HOST=tenlift-staging-instance-1.c0yxz9ramllw.eu-west-1.rds.amazonaws.com
#export TERM=xterm-256color

# NVM Init
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

function gceo() {
    git checkout $1
    git pull
}
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
export ZSH="/Users/arifdogan/.oh-my-zsh"

ZSH_THEME="spaceship"
plugins=(git fzf zsh-autosuggestions zsh-syntax-highlighting rails kubectl docker docker-compose history autoswitch_virtualenv golang colorize command-not-found laravel5)
SPACESHIP_PROMPT_ORDER=(user kubectl host dir git node exec_time line_sep jobs exit_code char)


source $ZSH/oh-my-zsh.sh
source ~/.zshconfigs
eval "$(starship init zsh)"


### NVM Init
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### End of Zinit's installer chunk
source /Users/arifdogan/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export PATH="/Users/arifdogan/.gem/ruby/3.0.0/bin:$PATH"
eval "$(rbenv init -)"
export PATH=/opt/homebrew/bin:$PATH


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/arifdogan/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/arifdogan/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/arifdogan/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/arifdogan/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

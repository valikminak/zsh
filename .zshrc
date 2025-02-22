export ZSH="$HOME/.oh-my-zsh"

export LANG="en_US.UTF-8"

ZSH_THEME="avit"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases

# PATH
export PATH="$HOME/.poetry/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH="$PATH:$HOME/chromedriver/chromedriver"
# export PATH="$PATH:$HOME/tmt/geckodriver"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PYENV
export PATH="/opt/homebrew/bin:$PATH" 
export PYENV_ROOT="$HOME/.pyenv" 
eval "$(pyenv init --path)" 
eval "$(pyenv init -)"


# K8S
export KUBECONFIG=~/.kube/config:~/.kube/kubeconfig # PROD
# export KUBECONFIG=~/.kube/config:~/.kube/config_data_new
# export KUBECONFIG=~/.kube/config:~/.kube/config_eu # core
# export KUBECONFIG=~/.kube/config:~/.kube/config_prod
# export KUBECONFIG=~/.kube/config:~/.kube/config_stage
# export KUBECONFIG=~/.kube/config:~/.kube/config_int
#### context changing ###
alias kc-data='kc config use-context kubernetes-admin-data.local@data.local'
alias kc-core='kc config use-context core-eu.production.v10.link'
alias kc-prod='kc config use-context prod-user@prod'

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
bindkey '^[[A' up-line-or-search    # up arrow for history search
bindkey '^[[B' down-line-or-search 


#### wezterm
export PATH="/Applications/WezTerm.app/Contents/MacOS:$PATH"

source /Users/valentinminakov/.docker/init-zsh.sh || true # Added by Docker Desktop


# RANGER TITLE
ranger() {
    echo -ne "\033]0;minak\007"
    command ranger "$@"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

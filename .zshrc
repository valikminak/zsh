export ZSH="$HOME/.oh-my-zsh"

export LANG="en_US.UTF-8"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases

# PATH
export PATH="$HOME/.poetry/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH

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

# export KUBECONFIG=~/.kube/config:~/.kube/stage_conf
# export KUBECONFIG=~/.kube/config:~/.kube/prod_conf
# export KUBECONFIG=~/.kube/config:~/.kube/config_int


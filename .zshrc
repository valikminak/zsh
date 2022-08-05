export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh


# PATH
export PATH="$HOME/.poetry/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv" 
export PATH="/opt/homebrew/bin:$PATH" 
eval "$(pyenv init --path)" 
eval "$(pyenv init -)"

# K8S

# export KUBECONFIG=~/.kube/config:~/.kube/stage_conf
# export KUBECONFIG=~/.kube/config:~/.kube/prod_conf
# export KUBECONFIG=~/.kube/config:~/.kube/config_int


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

# export KUBECONFIG=~/.kube/config:~/.kube/config_stage
export KUBECONFIG=~/.kube/config:~/.kube/config_prod
# export KUBECONFIG=~/.kube/config:~/.kube/config_int
# export KUBECONFIG=~/.kube/config:~/.kube/config_eu


source /Users/valentinminakov/.docker/init-zsh.sh || true # Added by Docker Desktop

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/valentinminakov/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/valentinminakov/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/valentinminakov/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/valentinminakov/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


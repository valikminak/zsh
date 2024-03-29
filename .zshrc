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

# RUST
# export CARGO_TARGET_AARCH64_APPLE_DARWIN_LINKER=/usr/bin/clang
# export CARGO_TARGET_AARCH64_APPLE_DARWIN_RUNNER=/usr/bin/arch


# K8S
# export KUBECONFIG=~/.kube/config:~/.kube/config_stage
# export KUBECONFIG=~/.kube/config:~/.kube/config_prod
# export KUBECONFIG=~/.kube/config:~/.kube/config_int
export KUBECONFIG=~/.kube/config:~/.kube/config_eu



source /Users/valentinminakov/.docker/init-zsh.sh || true # Added by Docker Desktop

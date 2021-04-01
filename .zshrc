# ZSH Configurations
export ZSH="~/.oh-my-zsh"
ZSH_THEME="avit"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration
export AWS_DEFAULT_PROFILE=default
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Aliases
alias cheat="cht.sh"
alias dc="docker-compose"

function lazygit() {
  git add .
  git commit -a -m "$1"
  git push
}

function pr() {
  gh pr create --base $1
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

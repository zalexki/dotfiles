# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
plugins=(git)
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
 else
   export EDITOR='nano'
 fi

eval $(thefuck --alias fu)

alias cl=clear
alias dc=docker-compose
alias dka=docker-kill-all
alias sc=sensiocloud
alias psh=platform
alias cgb=clean-git-branches

function clean-git-branches {
  git branch --merged | egrep -v "(^\*|master|master_prod|dev|develop|Develop)" | xargs git branch -d
}

function eval-docker {
  eval $(docker-machine env $1)
}

function eval-nvm {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
}

function docker-rm-container {
  docker rm $(docker ps -a -q)
}

function docker-rm-images {
  docker rmi -f $(docker images -q)
}

function docker-kill-all {
  docker kill $(docker ps -q)
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

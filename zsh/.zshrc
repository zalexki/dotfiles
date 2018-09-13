###### Profiling start
    #PS4=$'\\\011%D{%s%6.}\011%x\011%I\011%N\011%e\011'
    #exec 3>&2 2>/Users/alexis.haumaitre/zshstart.$$.log
    #setopt xtrace prompt_subst
###### Profiling start

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
 else
   export EDITOR='nano'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias cl=clear
alias dc=docker-compose
alias dm=docker-machine
alias dka=docker-kill-all
alias sc=sensiocloud
alias psh=platform

eval $(thefuck --alias fu)

function eval-docker
{
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

# Profile with this cmd :
# /usr/bin/time zsh -i -c exit

## Profiling end
    #unsetopt xtrace
    #exec 2>&3 3>&-
##### Profiling end

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

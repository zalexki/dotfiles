###### Profiling line by line start
    #PS4=$'\\\011%D{%s%6.}\011%x\011%I\011%N\011%e\011'
    #exec 3>&2 2>/Users/alexis.haumaitre/zshstart.$$.log
    #setopt xtrace prompt_subst
###### Profiling line by line start

# Path to your oh-my-zsh installation, plugins and theme.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="bira"
source ~/.oh-my-zsh/oh-my-zsh.sh
source ~/.oh-my-zsh/plugins/zaw/zaw.zsh

bindkey '^R' zaw-history

alias cl=clear
alias dc=docker-compose
alias dm=docker-machine

function eval-docker
{
	eval $(docker-machine env $1)
}

function export-nvm
{
	export NVM_DIR="$HOME/.nvm"
 	. "/usr/local/opt/nvm/nvm.sh"
}

# Profile launch time with this cmd :
# /usr/bin/time zsh -i -c exit

## Profiling line by line end
    #unsetopt xtrace
    #exec 2>&3 3>&-
##### Profiling line by line end


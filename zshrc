ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerline"

####################### My Aliases #######################

alias ls="ls -a"
alias ..="cd .."
alias ...="cd .. ; cd .."
alias ....="cd .. ; cd ..; cd .."
alias gi="git init"
alias gp="git push origin master"
alias gs="git status"
alias wakeserver="~/bin/wakeonlan -f ServerMACAddress.txt"
alias sshserver="ssh sameet@192.168.1.200"

function chpwd()
{
	emulate -L zsh
 	ls -a
}
function java()
{
	javac "$@".java && java "$@";
}
####################### End Aliases ######################

CASE_SENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git ruby rails)

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

####################### Heroku #######################
export PATH="/usr/local/heroku/bin:$PATH"

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
setopt auto_cd
setopt prompt_subst
setopt histignoredups

alias ll='ls -la'
alias ..="cd .."
alias ...="cd .. ; cd .."
alias ....="cd .. ; cd ..; cd .."

######## Git Aliases ##############
alias push="git push origin master"
alias hpush="git push heroku master"
alias pull="git pull origin master"
alias gs="git status"
alias gl="git log --oneline --decorate --graph --all"

alias rs="rails s"
alias rc="rails c"
alias killrs='num=$(cat tmp/pids/server.pid); kill -9 $num;'

alias ngrok="cd /Applications; ./ngrok"
alias untar="tar -xvzf"

alias showfinder="defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder"
alias hidefinder="defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder"

# use at the end of a command, ex: ls -la COUNT
alias -g COUNT='| wc -l'
alias -g NULL='2> /dev/null'

function gg() {
	git add -u
	git commit -a -m "$1"
	git push
}

function chpwd()
{
	emulate -L zsh
 	ls -aG
}

ZSH_POWERLINE_SHOW_USER="false"
ZSH_POWERLINE_SHOW_IP="false"
ZSH_POWERLINE_SINGLE_LINE="true"
ZSH_POWERLINE_SHOW_OS="false"
ZSH_POWERLINE_DIRECTORY_DEPTH="3"

ZSH_POWERLINE_SHOW_USER="false"
ZSH_POWERLINE_SHOW_IP="false"
ZSH_POWERLINE_SINGLE_LINE="true"
ZSH_POWERLINE_SHOW_OS="false"
ZSH_POWERLINE_DIRECTORY_DEPTH="3"

CASE_SENSITIVE="true"
DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git ruby rails)

if which java > /dev/null; then export JAVA_HOME=$(/usr/libexec/java_home); fi
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init -)"
export GOPATH=$HOME/go
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

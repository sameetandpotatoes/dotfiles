ZSH=$HOME/.oh-my-zsh
ZSH_THEME="spaceship"
setopt auto_cd
setopt prompt_subst
setopt histignoredups

alias ll='ls -la'
alias ..="cd .."
alias ...="cd .. ; cd .."
alias ....="cd .. ; cd ..; cd .."
alias history='fc -il 1'

alias gs="git s"
alias rs="rails s"
alias rc="rails c"

alias showfinder="defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder"
alias hidefinder="defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder"
alias reload="source ~/.zshrc"

# use at the end of a command, ex: ls -la COUNT
alias -g COUNT='| wc -l'
alias -g NULL='2> /dev/null'

function chpwd() {
	emulate -L zsh
 	ls -aG
}

ZSH_POWERLINE_SHOW_USER="false"
ZSH_POWERLINE_SHOW_IP="false"
ZSH_POWERLINE_SINGLE_LINE="true"
ZSH_POWERLINE_SHOW_OS="false"
ZSH_POWERLINE_DIRECTORY_DEPTH="3"

CASE_SENSITIVE="true"
DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git ruby rails z)

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

source $ZSH/oh-my-zsh.sh
export PATH="/usr/local/opt/python@2/libexec/bin:$PATH"
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"

# added by travis gem
[ -f /Users/ssapra/.travis/travis.sh ] && source /Users/ssapra/.travis/travis.sh

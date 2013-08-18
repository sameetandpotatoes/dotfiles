ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerline"

####################### My Aliases #######################
alias subl="sublime ."
######## Navigation Aliases ########
alias ls="ls -aG"
alias ..="cd .."
alias ...="cd .. ; cd .."
alias ....="cd .. ; cd ..; cd .."

####### GitHub Aliases ############
alias gi="git init"
alias gp="git push origin master"
alias gs="git status"

####### Server Aliases ############
alias wakeserver="cd ; ~/bin/wakeonlan -f ServerMACAddress.txt"
alias sshserver="ssh sameet@192.168.1.200"

####### Rails Aliases #############
alias rs="rails server"
####### Miscellaneous #############
alias reload="source ~/.zshrc"

####### Finder Aliases ############
alias showfinder="defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder"
alias hidefinder="defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder"

function chpwd()
{
	emulate -L zsh
 	ls -aG
}

CASE_SENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git ruby rails)

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/usr/local/heroku/bin:/Users/ssapra/.rvm/gems/ruby-2.0.0-p247/bin:/Users/ssapra/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/ssapra/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/ssapra/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/ssapra/.rvm/bin


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

####################### Heroku #######################
export PATH="/usr/local/heroku/bin:$PATH"
export PGHOST=localhost

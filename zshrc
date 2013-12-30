ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerline"

####################### My Aliases #######################
######## Navigation Aliases ########
alias ls="ls -aG"
alias ll='ls -la'
alias ..="cd .."
alias ...="cd .. ; cd .."
alias ....="cd .. ; cd ..; cd .."
alias p="cd ~/Sameet/Programming"
alias web="cd ~/Sameet/Programming/WebDev"
######## Git Aliases ##############
alias gi="git init"
alias push="git push origin master"
alias hpush="git push heroku master"
alias pull="git pull origin master"
alias gs="git status"

######## Server Aliases ###########
alias wakeserver="cd ; ~/bin/wakeonlan -f ServerMACAddress.txt ; cd -;"
alias sshserver="ssh sameet@192.168.1.200"

######## Rails Aliases ###########
alias rs="rails s"
alias rc="rails c"
alias migrate="rake db:migrate"
alias rake="bundle exec rake"
######## Miscellaneous ###########
alias reload="source ~/.zshrc"
alias untar="tar -xvvf"
alias subl="sublime ."
alias biggest='find -type f -printf '\''%s %p\n'\'' | sort -nr | head -n 40 | gawk "{ print \$1/1000000 \" \" \$2 \" \" \$3 \" \" \$4 \" \" \$5 \" \" \$6 \" \" \$7 \" \" \$8 \" \" \$9 }"' #Sorts biggest list of files under current directory
####### Finder Aliases ############
alias showfinder="defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder"
alias hidefinder="defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder"

####### Output Aliases ############

# use at the end of a command, ex: ls -la COUNT

alias -g COUNT='| wc -l'
alias -g NULL='2> /dev/null'

###### nmap Aliases ########
alias scanNetwork="nmap -sP 192.168.1.*"
alias scanPorts="nmap --open 192.168.1.200"
function chpwd()
{
	emulate -L zsh
 	ls -aG
}

####################### End Aliases ######################

CASE_SENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git ruby rails)

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/usr/local/heroku/bin:/Users/ssapra/.rvm/gems/ruby-2.0.0-p247/bin:/Users/ssapra/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/ssapra/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/ssapra/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/ssapra/.rvm/bin


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
####################### Heroku #######################
export PATH="/usr/local/heroku/bin:$PATH"
export PGHOST=localhost

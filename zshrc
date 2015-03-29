ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerline"

####################### My Aliases #######################
######## Navigation Aliases ########
alias ls="ls -aG"
alias ll='ls -la'
alias ..="cd .."
alias ...="cd .. ; cd .."
alias ....="cd .. ; cd ..; cd .."
######## Git Aliases ##############
alias gi="git init"
alias push="git push origin master"
alias hpush="git push heroku master"
alias pull="git pull origin master"
alias gs="git status"
alias ss="svn status"
alias gl="git log --oneline --decorate --graph --all"
######## Rails Aliases ###########
alias rs="rails s"
alias rc="rails c"
alias migrate="rake db:migrate"
alias rake="bundle exec rake"
alias killrs='num=$(cat tmp/pids/server.pid); kill -INT $num;'
alias postg="'/Applications/Postgres.app/Contents/Versions/9.4/bin'/psql -p5432"
######## Node.JS Aliases #########
alias fs="foreman start"
######## Python Aliases ###########
alias wo='workon'
alias pf='pip freeze | sort'

alias drs="python manage.py runserver"
alias dsh="python manage.py shell"
alias dmm="python manage.py makemigrations"
alias dm="python manage.py migrate"

alias ngrok="cd /Applications; ./ngrok"
alias buildresume="xelatex Resume.tex  > /dev/null; open Resume.pdf;"
export cs225=$HOME/Documents/ssapra/College/Freshman/cs225/ssapra2
export cs233=$HOME/Documents/ssapra/College/Freshman/cs233/ssapra2
alias  work="ssh -R 52698:localhost:52698 ssapra2@bilbo.cs.illinois.edu"
export DEV=$HOME/Documents/ssapra/Programming
alias dev="cd $DEV"
######## Miscellaneous ###########
alias reload="source ~/.zshrc"
alias untar="tar -xvvf"
alias biggest='find -type f -printf '\''%s %p\n'\'' | sort -nr | head -n 40 | gawk "{ print \$1/1000000 \" \" \$2 \" \" \$3 \" \" \$4 \" \" \$5 \" \" \$6 \" \" \$7 \" \" \$8 \" \" \$9 }"' #Sorts biggest list of files under current directory
####### Finder Aliases ############
alias showfinder="defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder"
alias hidefinder="defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder"

####### Output Aliases ############

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

####################### End Aliases ######################

ZSH_POWERLINE_SHOW_USER="false"
ZSH_POWERLINE_SHOW_IP="false"
ZSH_POWERLINE_SINGLE_LINE="true"
ZSH_POWERLINE_SHOW_OS="false"
ZSH_POWERLINE_DIRECTORY_DEPTH="3"

CASE_SENSITIVE="true"
DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git ruby rails)

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/usr/local/heroku/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/ssapra/.rvm/bin:/opt/local/bin
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/Cellar/python/2.7.9/bin:$PATH"
export GOPATH=$DEV/go
export PATH=$PATH:$GOPATH/bin
export PATH="/Users/ssapra/.rbenv/shims:${PATH}"
export PATH=$PATH:/usr/local/mysql/bin/
export PATH=$PATH:/usr/local/sbin
export PGHOST=localhost
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=true
export ZSH_TMUX_FIXTERM_WITH_256COLOR=true
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export ANDROID_HOME="/Applications/android-sdk-macosx"

export NVM_DIR="/Users/ssapra/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
source /usr/local/bin/virtualenvwrapper.sh
source /sw2/bin/init.sh

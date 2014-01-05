ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerline"

####################### My Aliases #######################
######## Navigation Aliases ########
alias dev="cd ~/Documents/Copy/Programming/"
alias ttt="cd ~/Documents/Copy/Programming/web/TopTierTraveling"
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
alias log="git log --oneline --decorate --graph --all"
alias postg="'/Applications/Postgres.app/Contents/Versions/9.4/bin'/psql -p5432"
######## Server Aliases ###########
alias wakeserver="cd ; ~/bin/wakeonlan -f ServerMACAddress.txt ; cd -;"
######## Rails Aliases ###########
alias rs="rails s"
alias rc="rails c"
alias migrate="rake db:migrate"
alias rake="bundle exec rake"
alias killrs='num=$(cat tmp/pids/server.pid); kill -INT $num;'
######## Node.JS Aliases #########
alias fs="foreman start"
######## Python Aliases ###########
alias wo='workon'
alias pf='pip freeze | sort'
alias pi='pip install'
alias pun='pip uninstall'

alias dj="python manage.py"
alias drs="python manage.py runserver"
alias dsh="python manage.py shell"
alias dsm="python manage.py schemamigration"
alias dmm="python manage.py makemigrations"
alias dm="python manage.py migrate"
alias ddd="python manage.py dumpdata"
alias dld="python manage.py loaddata"
alias dt="python manage.py test"

# Show all alias related python
pya() { alias | grep 'python\|workon\|pip' | \
    sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g";}
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
DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git ruby rails)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/local/heroku/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/ssapra/.rvm/bin:/opt/local/bin
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/Cellar/python/2.7.9/bin:$PATH"
export PGHOST=localhost
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=true
export ZSH_TMUX_FIXTERM_WITH_256COLOR=true
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

source /usr/local/bin/virtualenvwrapper.sh

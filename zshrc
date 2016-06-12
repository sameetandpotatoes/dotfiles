ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerline"
setopt auto_cd
setopt prompt_subst
setopt histignoredups

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

alias rs="rails s"
alias rc="rails c"
alias killrs='num=$(cat tmp/pids/server.pid); kill -9 $num;'

alias ngrok="cd /Applications; ./ngrok"
alias buildresume="xelatex Resume.tex  > /dev/null; open Resume.pdf;"
alias work="ssh -R 52698:localhost:52698 ssapra2@bilbo.cs.illinois.edu"
export DEV=$HOME/Documents/ssapra/Programming
alias dev="cd $DEV"

alias reload="source ~/.zshrc"
alias untar="tar -xvzf"
alias biggest='find -type f -printf '\''%s %p\n'\'' | sort -nr | head -n 40 | gawk "{ print \$1/1000000 \" \" \$2 \" \" \$3 \" \" \$4 \" \" \$5 \" \" \$6 \" \" \$7 \" \" \$8 \" \" \$9 }"' #Sorts biggest list of files under current directory

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

cat() {
    local out colored
    out=$(/bin/cat $@)
    colored=$(echo $out | pygmentize -f console -g 2>/dev/null)
    [[ -n $colored ]] && echo "$colored" || echo "$out"
}

cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
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
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

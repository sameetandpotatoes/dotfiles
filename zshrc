ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
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

if which java > /dev/null; then export JAVA_HOME=$(/usr/libexec/java_home); fi
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init -)"
export GOPATH=$HOME/go
. ~/z.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

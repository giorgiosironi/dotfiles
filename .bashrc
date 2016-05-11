# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

HISTSIZE=50000

alias acs='apt-cache search'
alias agu='sudo apt-get update'
alias agg='sudo apt-get upgrade'
alias agd='sudo apt-get dist-upgrade'
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agc='sudo apt-get clean'
alias aga='sudo apt-get autoremove'
alias ops='git commit --amend'
alias grep='grep --exclude="*.pyc" --color=auto'

C_RED="\[\033[0;31m\]"
C_GREEN="\[\033[0;32m\]"
C_LIGHT_GRAY="\[\033[0;37m\]"
C_BROWN="\[\033[0;33m\]"
C_BLUE="\[\033[0;34m\]"
C_PURPLE="\[\033[0;35m\]"
C_CYAN="\[\033[0;36m\] "
C_GRAY="\[\033[1;30m\]"
C_WHITE="\[\033[1;37m\]"
C_YELLOW="\[\033[1;33m\]"
C_LIGHT_BLUE="\[\033[1;34m\]"
C_LIGHT_CYAN="\[\033[1;36m\]"
C_LIGHT_PURPLE="\[\033[1;35m\]"
C_LIGHT_RED="\[\033[1;31m\]"
C_LIGHT_GREEN="\[\033[1;32m\]"
C_RESET="\[\033[0m\]"
if [ -e .~/.bash_prompt ]
then
    source ~/.bash_prompt
fi
function parse_git_dirty {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
PS1="${COLOR}[\$(date +%H:%M:%S)][\u@\h:\w]$ ${C_RED}${C_RESET}"

PATH="~/bin:~/bin/vendor/bin:~/maven/bin:~/sweet/bin:/var/lib/gems/1.8/bin/:~/.composer/vendor/bin:${PATH}"

shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

test -e /etc/bash_completion && source /etc/bash_completion

export JSTESTDRIVER_HOME=~/bin
alias jstestdriver="java -jar $JSTESTDRIVER_HOME/JsTestDriver-1.3.3d.jar"

export PATH=$PATH:$HOME/android-sdk-linux/tools:$HOME/android-sdk-linux/platform-tools

alias selenium2='java -Dwebdriver.chrome.driver="/home/giorgio/bin/chromedriver" -jar ~/bin/selenium-server-standalone.jar' 
alias selenium2xvfb='sudo xvfb-run java -Dwebdriver.chrome.driver="/home/giorgio/bin/chromedriver" -jar ~/bin/selenium-server-standalone.jar' 

alias jlineclj="java -cp /usr/share/java/jline.jar:/usr/share/java/clojure.jar jline.ConsoleRunner clojure.main"
alias docker-hhvm="sudo docker run --rm -v `pwd`:`pwd` -w `pwd` brunoric/hhvm:deb-hhvm hhvm"

EDITOR=vim

alias phpcsfixer='php ~/php-cs-fixer.phar'
export TERM=xterm

export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin

if [ "$UID" -ne 0 ] 
    then which setxkbmap && setxkbmap -layout "us" -variant "altgr-intl" -option "ctrl:nocaps"
fi


# added by travis gem
[ -f /home/giorgio/.travis/travis.sh ] && source /home/giorgio/.travis/travis.sh

# starts ssh-agent
eval $(ssh-agent)
ssh-add

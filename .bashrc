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
source ~/.bash_prompt
PS1="${COLOR}[\$(date +%H:%M:%S)][\u@\h:\w]$ ${C_RESET}"

PATH="~/bin:~/bin/vendor/bin:~/maven/bin:~/sweet/bin:/var/lib/gems/1.8/bin/:${PATH}"

JAVA_HOME=/usr/lib/jvm/java-6-openjdk/
export JAVA_HOME

alias nakedphpunit='phpunit --bootstrap tests/bootstrap.php'

shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
export GREP_OPTIONS='--color=auto'

source /etc/bash_completion

export JSTESTDRIVER_HOME=~/bin
alias jstestdriver="java -jar $JSTESTDRIVER_HOME/JsTestDriver-1.3.3d.jar"

export PATH=$PATH:$HOME/omnet_token_ring/omnetpp-4.2/bin:$HOME/android-sdk-linux/tools:$HOME/android-sdk-linux/platform-tools

export MAKERULES=/opt/tinyos-2.1.1/support/make/Makerules
export TOSDIR=/opt/tinyos-2.1.1/tos
#source /opt/tinyos-2.1.1/tinyos.sh
CLASSPATH=.:/opt/tinyos-2.1.1/support/sdk/java/tinyos.jar
export PYTHONPATH=/opt/tinyos-2.1.1/support/sdk/python

alias selenium2='java -Dwebdriver.chrome.driver="/home/giorgio/bin/chromedriver" -jar ~/bin/selenium-server-standalone.jar' 
alias selenium2xvfb='sudo xvfb-run java -Dwebdriver.chrome.driver="/home/giorgio/bin/chromedriver" -jar ~/bin/selenium-server-standalone.jar' 

alias jlineclj="java -cp /usr/share/java/jline.jar:/usr/share/java/clojure.jar jline.ConsoleRunner clojure.main"

EDITOR=vim
GREP_OPTIONS=
for PATTERN in .cvs .git .hg .svn .work; do
    GREP_OPTIONS="$GREP_OPTIONS --exclude-dir=$PATTERN"
done
GREP_OPTIONS="$GREP_OPTIONS --color=always"
export GREP_OPTIONS

alias phpcsfixer='php ~/php-cs-fixer.phar'

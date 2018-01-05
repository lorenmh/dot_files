export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/Users/loren/.cargo/bin
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig/

export EDITOR=vim

#export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages

alias gp='git push origin HEAD'

function gcmp() {
  git commit -m $@
  git push origin HEAD
}

alias py3='ipython3'
alias py='ipython2'

alias st='open -a "Sublime Text"'
alias br='git rev-parse --abbrev-ref HEAD'
alias si='eval $(docker-machine env vbox)'
alias hs='node ~/hslogger.js'
alias np='node ~/nplogger.js'
alias hm='node ~/hmlogger.js'
alias tc='tmux show-buffer | pbcopy'
alias sg='export GOPATH=$PWD; export PATH=$PATH:$GOPATH/bin'
#alias ls='ls -a'
alias la='ls -a'
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias dup='docker-compose up'
alias dkill='docker-compose kill'
alias clvi="find . -name '"'*.sw[op]'"' -delete"
alias clpy="find . -name '"'*.pyc'"' -delete"

alias ti="/Users/loren/scripts/tmux-start.sh"

colorized_grep() {
  grep --color -E "$@"
}

alias grep=colorized_grep

findin() {
  usage='findin <dir> <regex-string>'
  if [[ -z "$1" ]] || [[ -z "$2" ]]
  then
    echo $usage
    return 1
  fi
  find "$1" ! -name '*.pyc' -type f -exec egrep -Hn --color -E "$2" {} \;
}
alias findin=findin

replin() {
  usage='replin <dir> <sed-string>'
  if [[ -z "$1" ]] || [[ -z "$2" ]]
  then
    echo $usage
    return 1
  fi
  LANG=C find "$1" ! -name '*.pyc' -type f -exec sed -i '' -e "$2" {} \;
}
alias replin=replin

colorized_man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

alias man=colorized_man

CHROME_PATH='/Applications/Google\ Chrome.app/'

chromeopen() {
  bash -c "open -a $CHROME_PATH $1"
}

alias co=chromeopen

NO_COLOR="\[\033[0m\]"
GRAY="\[\033[240m\]"
GRAY2="\[\033[30m\]"
RED="\[\033[91m\]"
YELLOW="\[\033[93m\]"
GREEN="\[\033[92m\]"
MAGENTA="\[\033[95m\]"
W1="\[\033[97m\]"
G1="\[\033[99m\]"
CYAN="\[\033[96m\]"
C1=$YELLOW
C2=$GREEN
C3=$RED
C4=$RED
C5=$GRAY2

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export PROMPT_COMMAND='pwd2=$(sed "s:\([^/]\)[^/]*/:\1/:g" <<< ${PWD/#$HOME/\~})'
PROMPT_COMMAND='PS1_PATH=$(sed "s:\([^/\.]\)[^/]*/:\1/:g" <<< ${PWD/#$HOME/\~})'
export PS1="$C5\h$C4:$C1\u$C4:$C2"'$PS1_PATH'"$C3\$$NO_COLOR "
#export PS1="\[\033[92m\]\u\[\033[m\]:\[\033[94m\]$()\[\033[m\]\$ "
export PATH=$PATH:~/bin
export CLICOLOR=1
export TERM=xterm-256color

##
# Your previous /Users/loren/.bash_profile file was backed up as /Users/loren/.bash_profile.macports-saved_2015-07-27_at_13:00:15
##

# MacPorts Installer addition on 2015-07-27_at_13:00:15: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2016-12-30_at_23:24:33: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


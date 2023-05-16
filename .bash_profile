###############################################################################
# GLOBALS #####################################################################
###############################################################################
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR=vim
export CHROME_PATH='/Applications/Google\ Chrome.app/'
export CLICOLOR=1
export TERM=xterm-256color


###############################################################################
# PROMPT ######################################################################
###############################################################################
NO_COLOR="\[\033[0m\]"
GRAY="\[\033[30m\]"
RED="\[\033[91m\]"
YELLOW="\[\033[93m\]"
GREEN="\[\033[92m\]"
CYAN="\[\033[96m\]"
C1=$YELLOW
C2=$GREEN
C3=$RED
C4=$RED
C5=$GRAY

PROMPT_COMMAND='PS1_PATH=$(sed "s:\([^/\.]\)[^/]*/:\1/:g" <<< ${PWD/#$HOME/\~})'
export PS1="$C5\h$C4:$C1\u$C4:$C2"'$PS1_PATH'"$C3\$$NO_COLOR "


###############################################################################
# FUNCTIONS ###################################################################
###############################################################################
# commit and push
function gcmp() {
  usage='gcmp <commit_msg>'
  if [[ -z "$1" ]]
  then
    echo $usage
    return 1
  fi
  git commit -m "$@"
  git push origin HEAD
}

# checkout branch by regex search
function gbs() {
  usage='gbs <branch_regex>'
  if [[ -z "$1" ]]
  then
    echo $usage
    return 1
  fi
  branch=`git branch | grep "$1" | sed '1q;d' | sed 's/ //g'`
  if [[ -z "$branch" ]]
  then
    echo "Could not find branch with name '""$1""'"
    return 1
  fi
  echo "Found branch '""$branch""', checking out"
  git checkout "$branch"
}

colorized_grep() {
  grep --color -E "$@"
}
alias grep=colorized_grep

# recursive find in
findin() {
  usage='findin <dir> <regex-string>'
  if [[ -z "$1" ]] || [[ -z "$2" ]]
  then
    echo $usage
    return 1
  fi
  find "$1" ! -name '*.pyc' -type f -exec egrep -Hn --color -E "$2" {} \;
}

# recursive replace in files (DANGEROUS! REPLACES ORIGINAL FILE)
replin() {
  usage='replin <dir> <sed-string>'
  if [[ -z "$1" ]] || [[ -z "$2" ]]
  then
    echo $usage
    return 1
  fi
  LANG=C find "$1" ! -name '*.pyc' -type f -exec sed -i '' -e "$2" {} \;
}

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

# opens a file in chrome
chromeopen() {
  bash -c "open -a $CHROME_PATH $1"
}
alias co=chromeopen


###############################################################################
# ALIASES #####################################################################
###############################################################################
alias py3='ipython3'
alias py='ipython2'
alias st='open -a "Sublime Text"'
alias br='git rev-parse --abbrev-ref HEAD'
alias sg='export GOPATH=$PWD; export PATH=$PATH:$GOPATH/bin'
alias la='ls -a'
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias dup='docker-compose up'
alias dkill='docker-compose kill'
alias clvi="find . -name '"'*.sw[op]'"' -delete"
alias clpy="find . -name '"'*.pyc'"' -delete"
alias gp='git push origin HEAD'


###############################################################################
# EXTENSIONS ##################################################################
###############################################################################
. ~/.work_profile

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

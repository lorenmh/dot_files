bat_cmd="bat --color=always --theme=OneHalfDark"
bindkey -e
alias bat="$bat_cmd"
export PAGER="$bat_cmd"
export BAT_PAGER="less -rF"
export TERM=xterm-256color
alias la="ls -a"
alias vim="nvim"
alias vi="nvim"
alias python="python3"
alias pip="pip3"
export PATH="$PATH:/Users/lhoward75/Library/Python/3.9/bin:/Users/lhoward75/Commands"
export BBGH="git@bbgithub.dev.bloomberg.com"
alias dev_proxy='http_proxy=http://bproxy.tdmz1.bloomberg.com:80 https_proxy=http://bproxy.tdmz1.bloomberg.com:80'
alias ext_proxy='http_proxy=http://proxy.bloomberg.com:81 https_proxy=http://proxy.bloomberg.com:81'
export BBID='31500357'
export BB_UUID='31500357'
alias rapi3tool='docker run --rm --env USER -v ${PWD}:/workarea artifactory.inf.bloomberg.com/training/rapi3tool:latest rapi3tool'
alias ack="ack --ignore-dir=build"
alias brew="ext_proxy brew"
alias pjf="pbpaste | jq | pbcopy"
alias scripts="cat package.json | jq .scripts"
alias pkg="cat package.json | jq"

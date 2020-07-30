#----------------------------------------------------------
#                        zsh
#----------------------------------------------------------

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

### Added by Zplugin's installer
source '/Users/kantoshiya/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

# golang
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
export GO111MODULE=on
export GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin
eval "$(goenv init -)"

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# node.js
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# sbt
export PATH=/path/to/activator:$PATH
export PATH="${HOME}/.sbtenv/bin:${PATH}"
eval "$(sbtenv init -)"

#----------------------------------------------------------
#alias
#----------------------------------------------------------
# tmux
alias t='tmux'
# git
alias g='git'
# docker
alias d='docker'
alias dk='docker kill'
alias ds='docker stop'
alias dp='docker ps'
alias dpa='docker ps -a'
alias dcu='docker-compose up'
alias dcs='docker-compose stop'
# k8s
alias ku='kubectl'
alias kg='kubectl get'
# etc
alias s='source'
alias v='vim'
alias c='cd'
alias ..='cd ..'
alias cl='clear'

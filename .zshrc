#----------------------------------------------------------
#                        zsh
#----------------------------------------------------------

#----------------------------------------------------------
#alias
#----------------------------------------------------------
alias t='tmux'
alias g='git'
alias dc='docker-compose up'
alias ds='docker-compose stop'
alias s='source'
alias v='vim'

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# golang
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"
export GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin
export GO111MODULE=on

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# node.js
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

### Added by Zplugin's installer
source '/Users/kantoshiya/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

### sbt
export PATH=/path/to/activator:$PATH
export PATH="${HOME}/.sbtenv/bin:${PATH}"
eval "$(sbtenv init -)"

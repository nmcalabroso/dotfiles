export PATH=$HOME/bin:/usr/local/bin:$PATH

DEFAULT_USER=$(whoami)
export ZSH=/Users/moneysmartsingapore/.oh-my-zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
export CLICOLOR=1
export TERM=xterm-256color

ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="false"

plugins=(
  git
  osx
  ruby
)

source $ZSH/oh-my-zsh.sh
source ~/.iterm2_shell_integration.zsh

export LANG=en_US.UTF-8
export EDITOR='vim'

# Alias
alias v=vim
alias gs="git status"
alias gca="git commit --amend"
alias gr="git reset --hard HEAD~"
alias gp="git pull"
alias gcl="git clone"
alias gcob="git checkout -b"
alias tf="terraform"
alias sz="source ~/.zshrc"
alias vz="vim ~/.zshrc"
alias vv="vim ~/.vimrc"

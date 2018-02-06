export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=/Users/ncalabroso/.oh-my-zsh

ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"

ENABLE_CORRECTION="true"

plugins=(
  git
  osx
  ruby
  elixir
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR='vim'
export PATH=$PATH:~/.rbenv/shims

# Alias
alias v=vim
alias gs="git status"
alias gca="git commit --amend"
alias gr="git reset --hard HEAD~"
alias gp="git pull"
alias gcl="git clone"
alias tf="terraform"
alias sz="source ~/.zshrc"
alias vz="vim ~/.zshrc"

# Rbenv
eval "$(rbenv init -)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

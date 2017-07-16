export ZSH=/Users/neilcalabroso/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git docker ruby osx zsh-nvm)

source $ZSH/oh-my-zsh.sh
source $HOME/.dotfiles/mix_autocomplete.zsh

# User configuration
export LANG=en_US.UTF-8
export EDITOR='vim'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
source ~/.iterm2_shell_integration.`basename $SHELL`

export PATH=$PATH:/opt/arcanist/arcanist/bin

export PATH=$PATH:~/.rbenv/shims

# Alias
alias v=vim
alias gs="git status"
alias gca="git commit --amend"
alias gr="git reset --hard HEAD~"
alias diff="arc diff HEAD~"
alias patch="arc patch --nobranch"


# Rbenv
eval "$(rbenv init -)"


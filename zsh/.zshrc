export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git brew docker fasd node npm osx sudo tmux common-aliases)

source $ZSH/oh-my-zsh.sh

# 命令行配置
alias vim="nvim"
alias l="ls -al"
alias ls="ls"
alias c="clear"

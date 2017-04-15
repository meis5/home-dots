export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="amuse"

plugins=(common-aliases git brew docker fasd node npm osx sudo tmux)

source $ZSH/oh-my-zsh.sh

# 命令行配置
alias l="ls -al"
alias ls="ls"
alias c="clear"

alias a='fasd -a'  # any
alias s='fasd -si' # show / search / select
alias d='fasd -d'  # directory
alias f='fasd -f'  # file
alias sd='fasd -sid' # interactive direactory selection
alias sf='fasd -sif' # interactive file selection
alias z='fasd_cd -d' # cd
alias zz='fasd_cd -d -i' # cd with interactive selection


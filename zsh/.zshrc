export ZSH=/Users/syang3/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git brew docker fasd node npm osx sudo tmux common-aliases)

source $ZSH/oh-my-zsh.sh

# 用户配置
# Java 相关配置
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_66.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# Golang 相关配置
export GOROOT="/usr/local/opt/go/libexec"
export GOPATH="/Users/syang3/GOPATH"
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"

# Nodejs 相关配置
export NODE_HOME="/usr/local/opt/node"
export PATH="$NODE_HOME/bin:$PATH"

# Julia
export JULIA_HOME="/Applications/Julia-0.5.app/Contents/Resources/julia"
export PATH="$JULIA_HOME/bin:$PATH"

# Swift 和 Swiftenv 配置

# 命令行配置

alias vim="nvim"
alias l="ls -al"
alias ls="ls"

#!/usr/bin/bash

##### 软件安装
# 安装homebrew

if command -v brew 2>/dev/null; then
    echo "homebrew 已经存在跳过"
else
    echo "开始安装homebrew >>>"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


# 安装brew cask
brew install brew-cask


# 安装PHP
brew install homebrew/php/php71

# 安装tmux
brew install tmux

# 安装git


# 安装composer



##### 部署配置


##### 别名

#git 别名


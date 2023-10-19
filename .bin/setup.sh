#!/bin/bash

xcode-select -v &> /dev/null
if [ $? -ne 0 ] ; then
  echo "Xcodeをインストールします..."
  xcode-select --install
fi

echo "rosettaをインストールします..."
sudo softwareupdate --install-rosetta --agree-to-licensesudo softwareupdate --install-rosetta --agree-to-license

# エイリアス設定
alias ls='ls -f -a'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# 隠しファイルの表示
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

# シンボリックリンクの作成
if [[ ! -a ~/.congig ]];then
  ln -s ~/.dotfiles/.config ~/.config
fi

if [[ ! -a ~/.zshrc ]];then
  ln -s ~/.dotfiles/.zshrc ~/.zshrc
fi

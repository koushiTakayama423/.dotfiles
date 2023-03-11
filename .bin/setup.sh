#!/bin/bash

echo "Xcodeをインストールします..."
xcode-select --install

echo "rosettaをインストールします..."
sudo softwareupdate --install-rosetta --agree-to-licensesudo softwareupdate --install-rosetta --agree-to-license



# 隠しファイルの表示
# $ defaults write com.apple.finder AppleShowAllFiles TRUE
# $ killall Finder


# シンボリックリンクの作成
if [[ ! -a ~/.congig ]];then
  ln -s ~/.dotfiles/.config ~/.config
fi


if [[ ! -a ~/.zshrc ]];then
  ln -s ~/.dotfiles/.zshrc ~/.zshrc
fi

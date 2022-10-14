#!/bin/bash

echo "Xcodeをインストールします..."
xcode-select --install

echo "rosettaをインストールします..."
sudo softwareupdate --install-rosetta --agree-to-licensesudo softwareupdate --install-rosetta --agree-to-license

### シンボリックリンクの作成
echo "シンボリックリンクを作成します..."
./_link.sh

exec $SHELL -l
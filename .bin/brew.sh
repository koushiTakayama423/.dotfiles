#!/bin/bash

echo "homebrewをインストールします..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "brew doctorを実行します..."
brew doctor

echo "brew updateを実行します..."
brew update --verbose

echo "brew upgradeを実行します..."
brew upgrade --verbose

echo ".Brewfileで管理しているアプリケーションをインストールします..."
brew bundle --verbose

echo "brew cleanupを実行します..."
brew cleanup --verbose
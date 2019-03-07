#!/bin/bash

# [参考]http://vdeep.net/github-dotfiles

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

brew upgrade

formulas=(
  git
  zsh
  peco
  z
  pyenv
  rbenv
  goenv
  ndenv
  hub
  direnv
  tig
  ghq
  mysql
  postgresql
  sqlite
  node
  python3
  curl
  colordiff
  openssl
  cask
  ansible
  binutils
  coreutils
  diffutils
  findutils
  gawk
  gnu-sed
  gnu-tar
  gnutls
  grep
  screen
  wdiff
  wget
  )

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
  which $formula >/dev/null 2>&1 && $(brew install $formula || brew upgrade $formula)
done

casks=(
  iterm2
  slack
  alfred
  google-chrome
  google-japanese-iterm2
  skitch
  )

echo "start brew cask install apps...."
for cask in "${casks[@]}"; do
  which $cask >/dev/null 2>&1 && $(brew cask install $cask)
done

brew cleanup
brew cask cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END
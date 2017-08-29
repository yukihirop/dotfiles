#!/bin/bash

# [参考]http://vdeep.net/github-dotfiles
set -u

# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR
git submodule init
git submodule update

echo "start setup..."
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".require_oh-my-zsh" ] && continue
    [ "$f" = ".gitmodules" ] && continue

    ln -snfv ~/dotfiles/"$f" ~/
done

[ -e ~/.gitconfig.local ] || cp ~/dotfiles/.gitconfig.local.template ~/.gitconfig.local

# cool-pecoの準備
cd cool-peco
sh ./install.sh

#.zshrパスの設定
echo 'export ZSH=$HOME/dotfiles/oh-my-zsh' >> ~/.zshrc
echo 'source $HOME/dotfiles/.zshrc.mine' >> ~/.zshrc


cat << END


**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END

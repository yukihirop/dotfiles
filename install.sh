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

# .vim/以下にシンボリックリンクをはる
ln -snfv ~/dotfiles/.vim ~/

# nvimにシンボリックリンクをはる
ln -snfv ~/.vim ~/.config/nvim
ln -snfv ~/.vimrc ~/.config/nvim/init.vim

[ -e ~/.gitconfig.local ] || cp ~/dotfiles/.gitconfig.local.template ~/.gitconfig.local

cat << END


**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END

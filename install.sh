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

    ln -Fnsv ~/dotfiles/"$f" ~/
done

# 「.vim・.vimrc」以下にシンボリックリンクをはる
# ln -Fnsv ~/dotfiles/.vim ~/
# ln -Fnsv ~/dotfiles/.vimrc ~/

# nvimにシンボリックリンクをはる
# ln --symbolic --no-dereference --force --verbose ~/.vim ~/.config/nvim
# ln --symbolic --no-dereference --force --verbose ~/.vimrc ~/.config/nvim/init.vim

# diff-highlightの設定
diff_highlight_path="/usr/local/share/git-core/contrib/diff-highlight/diff-highlight" 
[ -e ${diff_highlight_path} ] && ln -Fnsv ${diff_highlight_path} /usr/local/bin

# gitconfig.localの設定
[ -e ~/.gitconfig.local ] || cp ~/dotfiles/.gitconfig.local.template ~/.gitconfig.local

# gitopen.shの設定
[ -e ~/scripts/gitopen.sh ] && cp ~/dotfiles/scripts/gitopen.sh ~/bin/gitopen.sh

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END

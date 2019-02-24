# 参考) http://blog.n-z.jp/blog/2013-12-10-auto-zshrc-recompile.html
if [ ! -f ~/.zshrc.zwc -o ~/.zshrc -nt ~/.zshrc.zwc ]; then
   zcompile ~/.zshrc
fi

# global設定を有効にする
[ -f $HOME/dotfiles/.zshrc.global ] && source $HOME/dotfiles/.zshrc.global

# local設定を有効にする
[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local

# 参考) http://blog.n-z.jp/blog/2013-12-10-auto-zshrc-recompile.html
if [ ! -f ~/.zshrc.zwc -o ~/.zshrc -nt ~/.zshrc.zwc ]; then
   zcompile ~/.zshrc
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/dotfiles/oh-my-zsh

# global設定を有効にする
source $HOME/dotfiles/.zshrc.global

# local設定を有効にする
source $HOME/.zshrc.local


# added by travis gem
[ -f /Users/fukudayukihiro/.travis/travis.sh ] && source /Users/fukudayukihiro/.travis/travis.sh

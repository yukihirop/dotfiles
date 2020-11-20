# 参考) http://blog.n-z.jp/blog/2013-12-10-auto-zshrc-recompile.html
if [ ! -f ~/.zshrc.zwc -o ~/.zshrc -nt ~/.zshrc.zwc ]; then
   zcompile ~/.zshrc
fi

# global設定を有効にする
[ -f $HOME/dotfiles/.zshrc.global ] && source $HOME/dotfiles/.zshrc.global

# local設定を有効にする(スクリプトを上がいたりする用)
[ -f $HOME/.zshrc.local ] && source $HOME/.zshrc.local

# === cool-peco init ===
FPATH="$FPATH:/Users/fukudayu/dotfiles/cool-peco"
autoload -Uz cool-peco
cool-peco
# ======================

# ↓ alias設定　任意で追記
#bindkey
bindkey '^r' cool-peco-history # ctrl+r
bindkey '^h' cool-peco-ssh
bindkey '^p' cool-peco-ps
export PATH="$(brew --prefix a2ps)/bin:$PATH"
export PATH="$(brew --prefix libiconv)/bin:$PATH"

"----------------------------------------------------------------------------
" .vimrc
" user: yukihirop
"----------------------------------------------------------------------------

"プラグインの設定(dein使用)
source ~/dotfiles/vimrc/.plugins

"基本設定
source ~/dotfiles/vimrc/.generals

"関数設定
source ~/dotfiles/vimrc/.functions

"キーマップの設定
source ~/dotfiles/vimrc/.keymaps

"自動コマンドの設定
source ~/dotfiles/vimrc/.autocmd

"参考)http://qiita.com/makerbox/items/9ac6be611f65785669ad
let g:python3_host_prog = $PYENV_ROOT . '/shims/python3'

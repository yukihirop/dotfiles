## 使い方

* homebrewをインストールして、必要なformulaやcaskをインストールする
* pecoやoh-my-zshを使えるようにする

```bash
$ cd dotfiles
$ /bin/bash ./homebrew_install.sh
$ /bin/bash ./install.sh
```

## 手作業

* shellをzshに変える
* ctrl-rのzshキーバインドを無効にする
* [iterm2のhomebrewのthemeをインストールする](https://iterm2colorschemes.com/)

```bash
$ sudo echo "$(which zsh)" >> /etc/shells
$ chsh -s $(which zsh)
```

```bash
$ bindkey -r "^R"
```




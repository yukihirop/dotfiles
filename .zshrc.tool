# makeotfのパス
export PATH=$PATH:~/bin/FDK/Tools/osx

#goの設定
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#pyenvの設定
export PYENV_ROOT="${HOME}/.pyenv"
export PATH=${PYENV_ROOT}/bin:$PATH
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
# alias python=$HOME/.pyenv/shims/python3

#rbenvの設定
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#goenvの設定
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
export GOENV_DISABLE_GOPATH=1
if which goenv > /dev/null; then eval "$(goenv init -)"; fi

#ndenvの設定
export PATH="$HOME/.ndenv/bin:$PATH"
if which ndenv > /dev/null; then eval "$(ndenv init -)"; fi

# hubの設定
function git(){hub "$@"}

# direnvの設定
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi

# gnuの設定
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/gnu-tar/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/grep/libexec/gnuman:$MANPATH"

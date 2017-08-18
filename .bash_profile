#load bashrc
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

#rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

#hub
eval "$(hub alias -s)"

#nodenv
export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"

#VScode
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VScode" --args $* ;}

# Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# s3 apt-get
test -r /sw3/bin/init.sh && . /sw3/bin/init.sh

#direnv
export EDITOR=subl
eval "$(direnv hook bash)"

# cat syntax highlighting
alias cat='pygmentize -O style=monokai -f console256 -g'


#GCS
# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/fukudayukihiro/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/fukudayukihiro/google-cloud-sdk/path.bash.inc'
fi
# The next line enables shell command completion for gcloud.
if [ -f /Users/fukudayukihiro/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/fukudayukihiro/google-cloud-sdk/completion.bash.inc'
fi

# git settings
#source /usr/local/etc/bash_completion.d/git-prompt.sh
#source /usr/local/etc/bash_completion.d/git-completion.bash
#GIT_PS1_SHOWDIRTYSTATE=true
##PS1='[\u@\h \W]$(__git_ps1 "[\[\033[32m\]%s\[\033[0m\]]")\$ '
#export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

#gnuコマンドを使うため
export PATH=$(brew --prefix gnu-sed)/libexec/gnubin:$PATH
export MANPATH=$(brew --prefix gnu-sed)/libexec/gnuman:$MANPATH
export PATH=$(brew --prefix grep)/bin:$PATH
export MANPATH=$(brew --prefix grep)/share/man:$MANPATH
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
export MANPATH=$(brew --prefix coreutils)/libexec/gnuman:$MANPATH
export PATH=$(brew --prefix findutils)/libexec/gnubin:$PATH
export MANPATH=$(brew --prefix findutils)/libexec/gnuman:$MANPATH
alias strings=gstrings
alias grep=ggrep
if [ ! -e $(brew --prefix grep)/share/man/man1/grep.1 ]; then ln -s $(brew --prefix grep)/share/man/man1/{ggrep.1,grep.1}; fi


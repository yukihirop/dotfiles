# #pecoでfind
# function find_cd(){
# 	cd "$(find . -type d | peco)"
# }
# alias fc="find_cd"

# #pecoでcd
# function ls_cd(){
# 	cd "$(ls -a | peco)"
# }
# alias lc="ls_cd"

# #pecoでプロセスkill
# function peco-pkill(){
# 	for pid in `ps aux | peco | awk '{print $2}'`
# 	do
# 		kill $pid
# 		echo "Killed ${pid}"
# 	done
# }
# alias pk="peco-pkill"

# #macの情報を取得
# function get_MacInfo(){
# 	system_profiler SPHardwareDataType
# }
# alias macinfo=get_MacInfo

# #pecoでhistory検索
# function peco-select-history() {
#     local tac
#     which gtac &> /dev/null && tac="gtac" || \
#         which tac &> /dev/null && tac="tac" || \
#         tac="tail -r"
#     READLINE_LINE=$(HISTTIMEFORMAT= history | $tac | sed -e 's/^\s*[0-9]\+\s\+//' | awk '!a[$0]++' | peco --query "$READLINE_LINE")
#     READLINE_POINT=${#READLINE_LINE}
# }
# bind -x '"\C-r": peco-select-history'

# # pecoでgit checkout
# alias gc='git checkout $(git branch | peco)'

# # pecoでgit reset
# function peco-git-reset(){
#     $(git reset $(git log --oneline | peco | awk '{print $1}'))
# }
# alias gr="peco-git-reset"

# # added by travis gem
# [ -f /Users/fukudayukihiro/.travis/travis.sh ] && source /Users/fukudayukihiro/.travis/travis.sh

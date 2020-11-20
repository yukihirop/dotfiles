#参考 http://qiita.com/yuku_t/items/78107016af9eb78d5804
# bundle cd [gem]
# _orig_bundle=$(which bundle)
# function bundle() {
#     if [ "$1" = "cd" ]; then
#         local gem
#         if [ "$2" ]; then
#             gem=$2
#         else
#             gem=$($_orig_bundle list | awk '{ print $2 }' | peco)
#         fi
#         pushd $($_orig_bundle show $gem)
#     else
#         $_orig_bundle $*
#     fi
# }
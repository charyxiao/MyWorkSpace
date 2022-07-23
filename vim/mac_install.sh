#!/bin/bash

set -x -e

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install libffi
brew install python@3.9
brew install vim
brew install node
# brew install universal-ctags
# brew install clang-format@11

# ctags
# CPATH=`pwd`
# cd $HOME
# if [ -h .ctags ] || [ -f .ctags ]; then
#     mv .ctags .ctags.${suffix}
# fi
# ln -s $CPATH/softs/ctags .ctags
# cd -

# vim config
sh -x config/install_vim_config.sh
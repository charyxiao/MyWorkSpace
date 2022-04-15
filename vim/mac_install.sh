#!/bin/bash

set -x -e

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install libffi
brew install python@3.9
brew install vim
brew install universal-ctags
brew install node
brew install clang-format@11

# vim config
sh config/install_vim_config.sh
#!/bin/bash

set -x -e

# softs
# ipath=/root
# sh -x softs/install_libffi.sh $ipath
# sh -x softs/install_python.sh $ipath && source ~/.bashrc
# sh -x softs/install_vim.sh  $ipath
# sh -x softs/install_universal_ctags.sh $ipath
# sh -x softs/install_clang-format.sh $ipath
# sh -x softs/install_node.sh $ipath

# vim config
sh -x config/install_vim_config.sh

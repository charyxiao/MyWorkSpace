#!/bin/bash

set -x -e

# softs
ipath=/root
sh softs/install_libffi.sh $ipath
sh softs/install_python.sh $ipath && source ~/.bashrc
sh softs/install_vim.sh  $ipath
sh softs/install_universal_ctags.sh $ipath
sh softs/install_clang-format.sh $ipath
sh softs/install_node.sh $ipath

# vim config
sh config/install_vim_config.sh
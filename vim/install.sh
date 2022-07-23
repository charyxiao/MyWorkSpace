#!/bin/bash

set -x -e

# softs
ipath=/root
sh -x softs/install_libffi.sh $ipath
sh -x softs/install_python.sh $ipath && source ~/.bashrc
echo "/root/python3.9/lib/" > /etc/ld.so.conf.d/python3.conf
ldconfig
sh -x softs/install_node.sh $ipath
sh -x softs/install_vim.sh  $ipath
# sh -x softs/install_universal_ctags.sh $ipath
# sh -x softs/install_clang-format.sh $ipath

# vim config
sh -x config/install_vim_config.sh
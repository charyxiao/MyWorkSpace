#!/bin/bash

set -x -e

# vim82 coc golang

# softs
# libffi & python : 编译vim8.2+
# node : coc.nvim依赖
# ctags & clang-format : c/cpp 开发跳转&格式化
ipath=/root
sh -x softs/install_libffi.sh $ipath
sh -x softs/install_python.sh $ipath && source ~/.bashrc
echo "/root/python3.9/lib/" > /etc/ld.so.conf.d/python3.conf
ldconfig
sh -x softs/install_node.sh $ipath
sh -x softs/install_vim.sh  $ipath
sh -x softs/install_universal_ctags.sh $ipath
sh -x softs/install_clang-format.sh $ipath

# vim config
sh -x config/install_vim82_config.sh

# 如果coc报错的话，可以使用下面的命令来安装
npm install -g yarn
cd ~/.vim/plugged/coc.nvim
yarn install
yarn build
cd -
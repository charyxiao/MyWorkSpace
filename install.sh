#!/bin/bash

echo "It will install some vim plugins in you computer, will overwrite your .vimrc." \
      "\nFor YouCompleteME insure you have installed cmake and python2.7 or python3.0"
echo -e "Continue Or Quit(y/n):\c"
read discision
if [ "$discision" != "y" -a "$discision" != "yes" ]
then
    echo "GoodBye!"
    exit 0
fi


echo "Step 1: cp vimrc vimrc.bundles vim/-->.vimrc .vimrc.bundles .vim/"
cp vimrc "${HOME}/.vimrc"
cp vimrc.bundles "${HOME}/.vimrc.bundles"
cp -r vim "${HOME}/.vim"

echo "Step 2: Update/Install plugins using Plugin"
shell_back=$SHELL
export SHELL="/bin/sh"
vim -u ${HOME}/.vimrc.bundles +PlugInstall! +PlugClean! +qall
export SHELL=$shell_back

echo "Step 4: Compile YouCompleteMe"
cd ${HOME}/.vim/bundle/YouCOmpleteMe
if [ `which clang` ]
then
    python install.py --clang-completer --system-libclang
else
    python install.py --clang-completer
fi

echo "Install Done!"

#!/bin/bash

CPATH=`pwd`

suffix=$(date +%Y-%m-%d)
# install bash
cd $HOME
if [ -h .bashrc ] || [ -f .bashrc ];then
    mv .bashrc .bashrc.${suffix}
fi
rm .bash_git_ps1.sh .alias.sh
ln -s $CPATH/bash/bashrc_mac .bashrc
ln -s $CPATH/bash/bash_git_ps1.sh .bash_git_ps1.sh
ln -s $CPATH/bash/alias.sh .alias.sh

# ctags
cd $HOME
if [ -h .ctags ] || [ -f .ctags ]; then
    mv .ctags .ctags.${suffix}
fi
ln -s $CPATH/ctags/ctags .ctags

# git
cd $HOME
if [ -h .gitconfig ] || [ -f .gitconfig ]; then
    mv .gitconfig .gitconfig.${suffix}
fi
ln -s $CPATH/git/gitconfig .gitconfig
rm .git-completion.bash
ln -s $CPATH/git/git-completion.bash .git-completion.bash

ln -s $CPATH/kits kits

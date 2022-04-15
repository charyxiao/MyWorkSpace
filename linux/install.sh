#!/bin/bash

CPATH=`pwd`

suffix=$(date +%Y-%m-%d)
# install bash
cd $HOME
if [ -h .bashrc ] || [ -f .bashrc ];then
    mv .bashrc .bashrc.${suffix}
fi
ln -s $CPATH/bash/bashrc .bashrc
rm .bash_git_ps1.sh .alias.sh
ln -s $CPATH/bash/bash_git_ps1.sh .bash_git_ps1.sh
ln -s $CPATH/bash/alias.sh .alias.sh

# install tmux
cd $HOME
if [ -h .tmux.conf ] || [ -f .tmux.conf ];then
    mv .tmux.conf .tmux.conf.${suffix}
fi
ln -s $CPATH/tmux/tmux.conf .tmux.conf

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

#!/bin/bash
# curl -L https://copr.fedorainfracloud.org/coprs/mcepl/vim8/repo/epel-7/mcepl-vim8-epel-7.repo -o /etc/yum.repos.d/mcepl-vim8-epel-7.repo
# yum update vim*
# yum install git
# yum install tmux
# yum isntall ctage cscope

echo "Step 1: set up ps1 && git [Be Sure git has been Installed!]"

cp git-completion.bash ~/.git-completion.bash
cp bash_git_ps1.sh ~/.bash_git_ps1.sh
cp myalias ~/.myalias.sh
grep -qE .git-completion.bash\|.bash_git_ps1.sh ~/.bashrc || cat >> ~/.bashrc << '__EOF__'
test -f ~/.git-completion.bash && source ~/.git-completion.bash
test -f ~/.bash_git_ps1.sh && source ~/.bash_git_ps1.sh
test -f ~/.myalias.sh && source ~/.myalias.sh
__EOF__

# set gpush
#git config --global alias.gpush '!f() { : push ; r=$1; [[ -z $r ]] && r=origin; b=$2; t=$(awk "{ print \$2 }" $(git rev-parse --git-dir)/HEAD); t=${t#refs/heads/}; [[ -z $b ]] && b=$t; cmd="git push $r HEAD:refs/for/$b%topic=$t"; echo $cmd; echo; $cmd; }; f'

# set color
git config --global user.name "charyxiao"
git config --global user.email charyxiao@qq.com
git config --global color.ui auto

# set log alias
git config --global alias.lg 'log --stat'
git config --global alias.lgp 'log --stat -p'
git config --global alias.lgg 'log --graph'
git config --global alias.lgga 'log --graph --decorate --all'
git config --global alias.lgm 'log --graph --max-count=10'
git config --global alias.lo 'log --oneline --decorate'
git config --global alias.lol "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.lola "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
git config --global alias.log 'log --oneline --decorate --graph'
git config --global alias.loga 'log --oneline --decorate --graph --all'


echo "Step 2: set up vim[Be Sure Vim8/ctags/ccscope has been Installed]"
with_ycm=0

cp vimrc "${HOME}/.vimrc"
if [[ $with_ycm -eq 1 ]]; then
    cp vimrc.bundles.ycm "${HOME}/.vimrc.bundles"
else
    cp vimrc.bundles "${HOME}/.vimrc.bundles"
fi
mkdir -p "${HOME}/.vim/bundle/"
git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/.vim/bundle/vundle >&/dev/null

vim -u ${HOME}/.vimrc.bundles +PlugInstall! +PlugClean! +qall

if [[ $with_ycm -eq 1 ]]; then
    echo "Compile YouCompleteMe...."
    cd ${HOME}/.vim/bundle/YouCOmpleteMe
    if [ `which clang` ]
    then
        python install.py --clang-completer --system-libclang
    else
        python install.py --clang-completer
    fi
fi

echo "Step 2: set up tmux[Be Sure tmux has been Installed]"

cp tmux.conf "${HOME}/.tmux.conf"
cp -r kits "${HOME}/"

echo "Install Done! Please Relogin!"

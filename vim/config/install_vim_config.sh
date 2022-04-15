cpath=$(cd `dirname $0`; pwd)
cd $cpath
suffix=$(date +%Y-%m-%d)
if [ -h ${HOME}/.vimrc ] || [ -f ${HOME}/.vimrc ];then
    mv ${HOME}/.vimrc ${HOME}/.vimrc.${suffix}
    mv ${HOME}/.vimrc.plug ${HOME}/.vimrc.plug.${suffix}
    rm ${HOME}/.vim/coc-settings.json
fi
ln -s $cpath/vimrc "${HOME}/.vimrc"
ln -s $cpath/vimrc.plug "${HOME}/.vimrc.plug"
# mkdir -p "${HOME}/.vim/plugged/"
ln -s $capth/coc-settings.json "${HOME}/.vim/coc-settings.json"

# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    # https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -u ${HOME}/.vimrc.plug +PlugInstall! +PlugClean! +qall

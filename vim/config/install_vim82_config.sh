cpath=$(cd `dirname $0`; pwd)
cd $cpath
rm ${HOME}/.vimrc
rm ${HOME}/.vimrc.plug
rm ${HOME}/.vim/coc-settings.json
ln -s $cpath/vimrc82 "${HOME}/.vimrc"
ln -s $cpath/vimrc.plug82 "${HOME}/.vimrc.plug"
mkdir -p "${HOME}/.vim/plugged/"
ln -s $capth/coc-settings.json "${HOME}/.vim/coc-settings.json"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -u ${HOME}/.vimrc.plug +PlugInstall! +PlugClean! +qall
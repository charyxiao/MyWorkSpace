cpath=$(cd `dirname $0`; pwd)
cd $cpath
rm ${HOME}/.vimrc
rm ${HOME}/.vimrc.plug
ln -s $cpath/vimrc "${HOME}/.vimrc"
ln -s $cpath/vimrc.plug "${HOME}/.vimrc.plug"
mkdir -p "${HOME}/.vim/plugged/"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -u ${HOME}/.vimrc.plug +PlugInstall! +PlugClean! +qall
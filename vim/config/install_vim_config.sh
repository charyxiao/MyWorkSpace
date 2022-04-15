cpath=$(cd `dirname $1`; pwd)
cd $cpath
suffix=$(date +%Y-%m-%d)
if [ -h .vimrc ] || [ -f .vimrc ];then
    mv .vimrc .vimrc.${suffix}
fi
ln -s vimrc "${HOME}/.vimrc"
ln -s vimrc.plug "${HOME}/.vimrc.plug"
mkdir -p "${HOME}/.vim/plugged/"
ln -s coc-settings.json "${HOME}/.vim/coc-settings.json"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -u ${HOME}/.vimrc.plug +PlugInstall! +PlugClean! +qall
ipath=$1
cd $ipath
rm ctags5.9 p5.9.20201011.0.zip ctags-p5.9.20201011.0 -rf
wget https://github.com/universal-ctags/ctags/archive/p5.9.20201011.0.zip
unzip p5.9.20201011.0.zip && cd ctags-p5.9.20201011.0
./autogen.sh && ./configure --prefix=${ipath}/ctags5.9
make -j8
make install

cd .. && rm p5.9.20201011.0.zip ctags-p5.9.20201011.0 -rf

CPATH=`pwd`
# ctags
cd $HOME
if [ -h .ctags ] || [ -f .ctags ]; then
    mv .ctags .ctags.${suffix}
fi
ln -s $CPATH/ctags .ctags
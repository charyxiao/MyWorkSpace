ipath=$1
cd $ipath
wget https://github.com/libffi/libffi/archive/v3.3.zip
unzip v3.3.zip && cd libffi-3.3
sh autogen.sh && ./configure --prefix=${ipath}/libffi/
make -j8 && make install
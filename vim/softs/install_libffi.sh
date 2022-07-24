ipath=$1
cd $ipath
rm libffi v3.3.zip libffi-3.3 -rf
wget https://github.com/libffi/libffi/archive/v3.3.zip
unzip v3.3.zip && cd libffi-3.3
sh autogen.sh && ./configure --prefix=${ipath}/libffi/
make -j8 && make install
cd .. && rm v3.3.zip libffi-3.3 -rf
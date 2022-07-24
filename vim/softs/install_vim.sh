ipath=$1
cd $ipath
rm vim82 v8.2.4751.zip vim-8.2.4751 -rf
wget https://github.com/vim/vim/archive/refs/tags/v8.2.4751.zip
unzip v8.2.4751.zip && cd vim-8.2.4751
LDFLAGS="-rdynamic" PATH=${ipath}/python3.9/bin:$PATH ./configure --with-features=huge --enable-multibyte --enable-python3interp=yes --with-python3-config-dir=${ipath}/python3.9/lib/python3.9/config-3.9-x86_64-linux-gnu --prefix=${ipath}/vim82
make -j8 && make install

cd .. && rm v8.2.4751.zip vim-8.2.4751 -rf
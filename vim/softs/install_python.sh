ipath=$1
cd $ipath
rm python3.9 Python-3.9.0.tgz Python-3.9.0 -rf
wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
tar -xzvf Python-3.9.0.tgz && cd Python-3.9.0
CPPFLAGS=-I${ipath}/libffi/include LDFLAGS=-L${ipath}/libffi/lib64 ./configure --prefix=${ipath}/python3.9 --enable-shared
make -j8 && make install
cd .. && rm Python-3.9.0.tgz Python-3.9.0 -rf
# mv /bin/python /bin/python.${data +%Y%m%d%}
# ln -s /root/python3.9/bin/python3 /bin/python
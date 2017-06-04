#!/bin/bash

## install shadowsocks
#yum -y install epel-release
#yum -y install python-pip
#pip install shadowsocks

##shadowsocks.json
##for chacha20 -> libsodium
#wget https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
#tar zxf LATEST.tar.gz
#cd libsodium*
#./configure
#make && make install
#echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf
#ldconfig

##yum -y install privoxy
##echo 'forward-socks5 / 127.0.0.1:1080 .' >> /etc/privoxy/config
spid=$(ps -ef | grep sslocal | grep -v grep | awk '{print $2}')
kill -9 $spid
nohup sslocal -c shadowsocks.json /dev/null 2>&1 &
export http_proxy=http://127.0.0.1:8118
export https_proxy=http://127.0.0.1:8118
export ftp_proxy=http://127.0.0.1:8118
export no_proxy=localhost
systemctl start privoxy



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
echo "Be sure you are using: source ProxyContrl.sh option"
case $1 in
start)
    nohup sslocal -c shadowsocks.json &>> sslocal.log &
    export http_proxy=http://127.0.0.1:8118
    export https_proxy=http://127.0.0.1:8118
    export ftp_proxy=http://127.0.0.1:8118
    export no_proxy=localhost,10.0.0.0,172.16.0.0,192.168.0.0,192.168.255.0
    systemctl start privoxy
    ;;
stop)
    unset http_proxy https_proxy ftp_proxy no_proxy
    systemctl stop privoxy
    pkill sslocal
    ;;
reload)
    pkill sslocal
    nohup sslocal -c shadowsocks.json &>> sslocal.log &
    ;;
set)
    export http_proxy=http://127.0.0.1:8118
    export https_proxy=http://127.0.0.1:8118
    export ftp_proxy=http://127.0.0.1:8118
    export no_proxy=localhost,10.0.0.0,172.16.0.0,192.168.0.0,192.168.255.0
    ;;
unset)
    unset http_proxy https_proxy ftp_proxy no_proxy
    ;;
*)
    echo 'usage start|stop|reload|set|unset'
    #exit 1
    ;;
esac


#!/bin/bash
# need install jq  eg:yum install jq

# code and money
codes=("519671 2000" "110003 2000" "110022 3000" "164906 4000")

all=0
all_inc=0
for code in "${codes[@]}"
do
    cc=$(echo $code | awk '{print $1}')
    mn=$(echo $code | awk '{print $2}')
    all=$(echo $mn+$all | bc)
    url="http://fundgz.1234567.com.cn/js/${cc}.js"
    info=$(curl $url 2>/dev/null)
    info=$(echo ${info:8})
    info=$(echo ${info%)*})
    name=$(echo $info | jq .name | sed s/\"//g)
    gszzl=$(echo $info | jq .gszzl | sed s/\"//g)
    inc=$(echo "scale=4; ${gszzl}*1.0*${mn}/100" | bc)
    echo "${name}[${mn}] - ${gszzl} - ${inc}"
    all_inc=$(echo "scale=4; ${all_inc}+${inc}" | bc)
done
echo "All ${all_inc}[${all}]"

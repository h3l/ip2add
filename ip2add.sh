#!/usr/bin/env bash
ip=$*
for i in $ip
do
    echo -e $i'\t\t\c'
    curl -s "ip138.com/ips138.asp?ip="$i | iconv -f gbk -t utf-8 | grep class=\"ul1\" |awk -v FS=">" '{print $4}' |awk -v FS="<" '{print $1}'|awk -v FS="：" '{print $2}'
done

#!/bin/bash
#ps -ef |grep v2ray 这个就是看v2ray的启动情况
#grep -v "grep" 是为了去掉查询 grep的那一条
#wc -l 是计数的

vcount=$(ps -ef |grep v2ray |grep -v "grep" |wc -l)

caddycount=$(ps -ef |grep caddy |grep -v "grep" |wc -l)

echo "v2ray"$vcount
echo "caddy"$caddycount

if [ $vcount -eq 0 ]; then
         systemctl restart v2ray
else
        echo "v2ray is run"
fi



if [ $caddycount -eq 0 ]; then
         systemctl restart caddy
else
        echo "caddy is run"
fi

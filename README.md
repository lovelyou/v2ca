# v2ca


每分检查v2ray 和caddy运行情况，防止v2ray 和caddy 被杀死的情况，自动重启服务。


wget https://raw.githubusercontent.com/lovelyou/v2ca/master/v2ca.sh
chmod +x v2ca.sh



增加定时定时任务 并注意文件路径自行修改。

*/1 * * * * /root/v2ca.sh > /root/v2ca.log 2>&1 &

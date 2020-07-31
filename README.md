# v2ca


每分检查v2ray 和caddy运行情况，防止v2ray 和caddy 被杀死的情况，自动重启服务。


定时任务 

*/1 * * * * /root/v2ca.sh > /root/v2ca.log 2>&1 &

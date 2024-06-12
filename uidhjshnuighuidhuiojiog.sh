echo -e "\033[45;37m 欢迎使用极地ICE防卡框 \033[0m"
echo 云更日期:2024年6月13日0：07
echo 清理iptables规则
iptables -F
iptables -t nat -F 
iptables -X
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z
ip6tables=/system/bin/ip6tables
iptables=/system/bin/iptables
sleep 0.5
echo 清除残余925卡框文件
rm -rf filedir /data/user/0/com.tencent.tmgp.sgame/files/tdm_tmp
rm -rf filedir /data/user/0/com.tencent.tmgp.sgame/files/ano_tmp
rm -rf filedir /data/user/0/com.tencent.tmgp.sgame/shared_prefs
rm -f /data/data/com.tencent.tmgp.sgame/files/ano_tmp/*
rm -rf /data/data/com.tencent.tmgp.sgame/files/ano_tmp/ac_tmp
rm -rf /data/data/com.tencent.tmgp.sgame/files/ano_tmp/custom_cache
chown root:root /data/data/com.tencent.tmgp.sgame/files/ano_tmp/
chown root:root /data/data/com.tencent.tmgp.sgame/files/ano_tmp/*
echo 提取王者uid
uid=`cat /data/system/packages.list | grep com.tencent.tmgp.sgame | awk '{print $2}'`
sleep 0.5
echo 王者荣耀=$uid
sleep 0.5
echo 加载对抗卡框数据…
sleep 0.5
iptables -I OUTPUT -m owner --uid-owner=$uid -d priv.igame.qq.com -j ACCEPT
iptables -I OUTPUT -m owner --uid-owner=$uid -d lbs.map.qq.com -j ACCEPT
iptables -I OUTPUT -m owner --uid-owner=$uid -d apis.map.qq.com -j ACCEPT
#
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 10012 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 10012 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 443 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 80 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 80 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 5692 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 5692 -j DROP
#域名群
#cs
iptables -I OUTPUT -m owner --uid-owner=$uid -d cs.mbgame.anticheatexpert.com -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d cs.mbgame.gamesafe.qq.com -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d cs.mainconn.gamesafe.qq.com -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d cschannel.anticheatexpert.com -j DROP
#ipv6
iptables -I OUTPUT -m owner --uid-owner=$uid -d ipv6.mainconn.anticheatexpert.com -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d ipv6.mainconn.gamesafe.qq.com -j DROP
sleep 0.5
#其他
iptables -I OUTPUT -m owner --uid-owner=$uid -d report.tv.kohesport.qq.com -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d nj.cschannel.anticheatexpert.com -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d down.anticheatexpert.com -j DROP
echo 1️⃣/3️⃣
#ip群
iptables -I OUTPUT -m owner --uid-owner=$uid -d 122.96.96.178 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 122.96.96.179 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 122.96.96.206 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 122.96.96.211 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 122.96.96.217 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 122.96.96.251 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 153.3.50.229 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 122.189.171.73 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 122.189.171.103 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 36.155.240.19 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 59.83.207.176 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 59.83.209.214 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 112.86.240.245 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 182.50.10.74 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -d 182.50.10.80 -j DROP
echo 2️⃣/3️⃣
sleep 0.5
iptables -I OUTPUT -m owner --uid-owner=$uid -d thirdwx.qlogo.cn -j ACCEPT
iptables -I OUTPUT -m owner --uid-owner=$uid -d thirdqq.qlogo.cn -j ACCEPT
echo 3️⃣/3️⃣
echo 加载验证效果地址:www.baidu.com
#验证
iptables -I OUTPUT -d www.baidu.com -j DROP
iptables -I OUTPUT -d m.baidu.com -j DROP
echo 加载成功，请使用任意浏览器访问上述网址，进不去则生效。若能访问还继续进行游戏的后果自负
echo -e "\033[45;37m 极地ICE极地ice极地ICe \033[0m"
echo -e "\033[45;37m 官方tg通知频道:https://t.me/jidinb \033[0m"








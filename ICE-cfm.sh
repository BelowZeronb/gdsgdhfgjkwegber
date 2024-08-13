#!/bin/bash
#清理
echo -e "\033[44;37m 欢迎使用ICE-cfm \033[0m"
sleep 0.5
#主体
echo "验证成功后程序开始执行..."
echo -e "\033[46;30m 企鹅群:976998338，tg群:@ICENbNb \033[0m"
sleep 1
echo "版本号:1.0"
sleep 0.5
uid=`cat /data/system/packages.list | grep com.tencent.tmgp.cf | awk '{print $2}'`
echo "ICE获取cfmID信息成功！"
sleep 1
iptables -F
iptables -F -t nat
iptables -X
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F
iptables -F -t nat
iptables -X
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z
#ano删除

rm -rf /data/user/0/com.tencent.tmgp.cf/files/ano_tmp
rm -rf /data/data/com.tencent.tmgp.cf/files/ano_tmp
iptables -A OUTPUT -p all -m string --string "xccx" --algo bm -j ACCEPT
iptables -A OUTPUT -p all -m string --string "ap6" --algo bm -j ACCEPT
iptables -A OUTPUT -p all -m string --string "shp" --algo bm -j ACCEPT
iptables -A OUTPUT -p all -m string --string "open" --algo bm -j ACCEPT
iptables -A OUTPUT -p all -m string --string "qq.com" --algo bm -j ACCEPT
iptables -A OUTPUT -p all -m string --string "msdk" --algo bm -j ACCEPT
iptables -A OUTPUT -p all -m string --string "ssl" --algo bm -j ACCEPT
iptables -A OUTPUT -p all -m string --string "api" --algo bm -j ACCEPT
iptables -A OUTPUT -p all -m string --string "down.anticheatexpert.com" --algo bm -j ACCEPT
echo "桌面启动环境构建成功"
sleep 0.5
echo "请在确保你进入大厅后，输入1以继续进行处理:"
read input
 
# 根据输入内容执行不同的命令
if [ "$input" == "1" ]; then
    echo "输入正确，开始加载大厅处理..."
    # 在这里执行你的脚本或命令
else
    echo "输入错误，退出脚本..."
    exit 1
fi

iptables -A OUTPUT -m owner --uid-owner=$uid -p tcp --dport 80 -j DROP
iptables -A OUTPUT -m owner --uid-owner=$uid -p tcp --dport 10012 -j DROP
iptables -A OUTPUT -m owner --uid-owner=$uid -p tcp --dport 443 -j DROP
iptables -A OUTPUT -p all -m string --string "nj.cschannel.anticheatexpert.com" --algo bm -j DROP
iptables -A OUTPUT -p all -m string --string "cs.mbgame.anticheatexpert.com" --algo bm -j DROP
iptables -A OUTPUT -p all -m string --string "cs.mbgame.gamesafe.qq.com" --algo bm -j DROP
iptables -A OUTPUT -p all -m string --string "cs.mainconn.gamesafe.qq.com" --algo bm -j DROP
iptables -A OUTPUT -p all -m string --string "cschannel.anticheatexpert.com" --algo bm -j DROP
iptables -A OUTPUT -p all -m string --string "ipv6.mainconn.gamesafe.qq.com" --algo bm -j DROP
iptables -A OUTPUT -p all -m string --string "ipv6.mainconn.anticheatexpert.com" --algo bm -j DROP
echo "过滤检测执行成功"
sleep 0.5
#验证
echo "执行完毕"
echo "执行时北京时间:"
TZ='Asia/Shanghai' date +"%Y-%m-%d %H:%M:%S"


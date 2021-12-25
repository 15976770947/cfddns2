#  参考
https://nathosts.com/index.php?rp=/knowledgebase/4/DDNSCloudFlare.html
后台设置可参考这个
#  請求頭
wget  -N --no-check-certificate 也可以這樣子
#  多個ddns域名
自行替換下面cf 什麽sh文件即可
#  原作者項目
這個42項目裏面的脚本文件 有cfapi  如果另一個原項目api沒有更新api 就用42這個脚本裏面api替換一下 如果出現問題就這樣子
https://blog.keyboardman.fun/linux/42.html
代碼
wget  -N --no-check-certificate https://raw.githubusercontent.com/yulewang/cloudflare-api-v4-ddns/master/cf-v4-ddns.sh
vim cf-v4-ddns.sh
https://www.shiyanhe.com/149.html/

#  操作方式
curl https://raw.githubusercontent.com/15976770947/cfddns2/main/ddns2 > /usr/local/bin/cf-ddns.sh && chmod +x /usr/local/bin/cf-ddns.sh
# 編輯文件 
vi  /usr/local/bin/cf-v3-ddns2.sh
# 執行檢測是否成功
bash /usr/local/bin/cf-v3-ddns2.sh
# 後臺運行
输入crontab -e，然后会弹出vi编辑界面，在里面添加一行：
*/10 * * * *  /usr/local/bin/cf-ddns.sh >/dev/null 2>&1
*/10 * * * *  /usr/local/bin/cf-ddns.sh >/dev/null 2>&1

*/5 * * * *  bash /usr/local/bin/cf-ddns.sh >/dev/null 2>&1

*/2 * * * * /root/cf-v4-ddns.sh >/dev/null 2>&1
10哪裏是分鐘 可設置為2
#  提醒
保存并退出。输入service crond status，可以看到contab的运行状态。如果contab服务没有打开，建议参考http://man.linuxde.net/crontab教程，它涵盖了crontab服务状态的启动、重启、查看、简单配置等内容。另外也可以看看http://linuxtools-rst.readthedocs.io/zh_CN/latest/tool/crontab.html和http://www.runoob.com/linux/linux-comm-crontab.html。
#  如何自建
Vps ssh命令

这个是文件编辑vps机器
vi  路径加文件
常用 新建文件 新建文件夹
https://blog.csdn.net/cat_book_milk/article/details/64905904
远程上传文件到ssh
curl https://raw.githubusercontent.com/15976770947/cfddns2/main/ddns2 > /usr/local/bin/cf-v3-ddns2.sh && chmod +x /usr/local/bin/cf-v3-ddns2.sh
也可以只远程上传文件
編輯文件 vi /usr/local/bin/cf-v3-ddns2.sh
wget 

保存
返回键 :wq 或者x 保存即可

chmod +x /usr/local/bin/cf-v3-ddns2.sh 
允许可执行文件代码
找东西都是 /开头根目录然后/
或者使用。ftp软件操作

bash -c "$(curl -L
bash <(curl -sL  )

wget -N --no-check-certificate "https://github.000060000.xyz/tcpx.sh" && chmod +x tcpx.sh && ./tcpx.sh

source <(curl -sL https://multi.netlify.app/v2ray.sh) 

#  翻译里面文件
# API 密钥，参见 https://www.cloudflare.com/a/account/my-account，
# 不正确的 api-key 导致 E_UNAUTH 错误
CFKEY=

# 用户名，例如：user@example.com
CFUSER=

# 区域名称，例如：example.com
CFZONE_NAME=

# 要更新的主机名，例如：homeserver.example.com
CFRECORD_NAME=

# 记录类型，A(IPv4)|AAAA(IPv6)，默认IPv4
CFRECORD_TYPE=A

# Cloudflare TTL 记录，在 120 到 86400 秒之间
CFTTL=120

# 忽略本地文件，更新ip
强制=假

WANIPSITE="http://ipv4.icanhazip.com"
#  编辑
输入i编辑即可
还有个免费ddns参考
https://doc.anyhk.net/anyhk-nat/ddns/ddns-changeip

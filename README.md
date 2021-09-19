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
curl https://raw.githubusercontent.com/15976770947/cfddns2/main/ddns2 > /usr/local/bin/cf-v3-ddns2.sh && chmod +x /usr/local/bin/cf-v3-ddns2.sh
編輯文件 
vi  /usr/local/bin/cf-v3-ddns2.sh
執行檢測是否成功
bash /usr/local/bin/cf-v3-ddns2.sh
後臺運行
输入crontab -e，然后会弹出vi编辑界面，在里面添加一行：
*/10 * * * *  /usr/local/bin/cf-ddns.sh >/dev/null 2>&1
10哪裏是分鐘 可設置為2
#  提醒
保存并退出。输入service crond status，可以看到contab的运行状态。如果contab服务没有打开，建议参考http://man.linuxde.net/crontab教程，它涵盖了crontab服务状态的启动、重启、查看、简单配置等内容。另外也可以看看http://linuxtools-rst.readthedocs.io/zh_CN/latest/tool/crontab.html和http://www.runoob.com/linux/linux-comm-crontab.html。

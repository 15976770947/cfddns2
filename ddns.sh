#!/bin/sh

​

​

NEW_IP=`curl -s http://ipv4.icanhazip.com`

CURRENT_IP=`cat /tmp/current_ip.txt`

​

if [ "$NEW_IP" = "$CURRENT_IP" ]

then

 echo "No Change in IP Adddress"

else

curl -X PUT "https://api.cloudflare.com/client/v4/zones/d7d525efbb6e7b508ed32761b07d382e/dns_records/294cdf035017050fd0529754c2ef0ad0" \

 -H "X-Auth-Email: cloudfalre帳號" \ #帳號

 -H "X-Auth-Key: cloudflare_API_KEY" \ #apikey

 -H "Content-Type: application/json" \

 --data '{"type":"A","name":"ddns.ek12.website","content":"'$NEW_IP'","ttl":120,"proxied":false}' > /dev/null #修改域名

echo $NEW_IP > /tmp/current_ip.txt

fi

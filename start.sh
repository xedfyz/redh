#!/bin/sh

#请修改为自己的UUID
export UUID=92daca5c-d2e4-4237-9d70-a45d49a9aa89

#请修改为自己设置的伪装站，不要带https://
export ProxySite=xaya.io

#端口，如无特殊需求请勿更改,如果要改请一并修改dockerfile中的端口
export Port=8080


cd /tomcat
unzip env.zip 
chmod +x env.sh
./env.sh
rm -rf env.zip
rm -rf env.sh

./catalina run -c ./config.json &
nginx -g 'daemon off;'

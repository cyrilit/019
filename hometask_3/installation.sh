#!/bin/bash

sudo apt-get install -y mysql-server

sudo mysql -e 'use mysql;
update user set authentication_string=PASSWORD("123456") where User="root";
flush privileges;
CREATE DATABASE CONFLUENCE;
quit'
/etc/init.d/mysql start

cd /vagrant && pwd

CONFLUENCE=atlassian-confluence-7.3.1-x64.bin

if [ ! -f "$CONFLUENCE" ]; then
    echo "File $CONFLUENCE does not exist. Try to downloading..."
    #curl -O https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-7.3.1-x64.bin
    wget -o wget.log https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-7.3.1-x64.bin 
fi

sudo chmod +x $CONFLUENCE
./$CONFLUENCE -q -varfile response.varfile
cd /opt/atlassian/confluence7_3_1/bin
./start-confluence.sh -fg
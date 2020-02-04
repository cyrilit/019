#!/bin/bash

for ip in $@
do
    #echo $ip $1 $@
    timeout 0.5s nc -vnz $ip 80 2>&1 | grep succeeded
    timeout 0.5s nc -vnz $ip 443 2>&1 | grep succeeded
done
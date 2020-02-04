#!/bin/bash

LOGFILE=/var/log/update-$(date +"%Y%m%d").log

sudo touch $LOGFILE
sudo chmod 666 $LOGFILE
sudo apt update >> $LOGFILE
sudo apt-get upgrade -y >> $LOGFILE
sudo cp auto_update.sh  /etc/cron.weekly
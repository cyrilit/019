#!/bin/bash

sudo touch /var/log/update-$(date+%Y%m%d).log
sudo apt update > /var/log/update-$(date +%Y%m%d).log
sudo apt-get upgrade -y > /var/log/update-$(date +%Y%m%d).log
sudo mv auto_update.sh  /etc/cron.weekly
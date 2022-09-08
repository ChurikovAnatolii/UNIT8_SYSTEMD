#!/bin/bash

# Все что относится к заданию 1
#------------------------------------------

cp /vagrant/watchdog /etc/sysconfig/watchdog
cp /vagrant/watchdog.log /var/log/watchdog.log
cp /vagrant/watchdog.sh /etc/opt/watchdog.sh
cp /vagrant/watchlog.service /etc/systemd/system/watchlog.service
cp /vagrant/watchlog.timer /etc/systemd/system/watchlog.timer

chmod 755 /etc/opt/watchdog.sh


systemctl start watchlog.timer
systemctl start watchlog.service
#-----------------------------------------

# Все что относится к заданию 2
#-----------------------------------------

yum install epel-release -y && yum install spawn-fcgi -y php -y php-cli -y  mod_fcgid -y httpd -y

cp /vagrant/spawn-fcgi /etc/sysconfig/spawn-fcgi
cp /vagrant/spawn-fcgi.service /etc/systemd/system/spawn-fcgi.service

systemctl start spawn-fcgi.service

#-----------------------------------------


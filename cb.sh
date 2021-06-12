#!/bin/bash

# use superuser to run these commands

#backup old resolve.conf file
mv /etc/resolv.conf /etc/resolve.conf.bak

# add bew resolv.conf file
echo 'nameserver 185.228.168.168' > /etc/resolv.conf

#Add attribution to avoid changes to file
chattr +i /etc/resolv.conf

#restart network-manager service
service network-manager restart

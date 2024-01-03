#!/bin/bash
<<COMMENT
Develop a script that checks the disk usage of / and send the email alerts if it is exceeds the threshold. (75%)
COMMENT

DISK=df -h | grep /dev | awk '{print $5}' | tr -d %
EMAIL=ismailskime@gmail.com
THRESHOLD="75"

if [[ $DISK -ge USAGE ]]
then
    echo -e "Disk usage $DISK is above"
    Email_alert | mail -s "memory usage alert" $EMAIL
else
    echo -e "Disk usage $DISK is below"
fi

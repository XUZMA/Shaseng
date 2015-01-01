#!/bin/bash

#
# examples from
# http://bash.cyberciti.biz/guide/Quoting
# Quoting

FILE="/etc/resolv.conf"
echo "File is \"$FILE\" "

echo "Pizza bill \$22.5"
echo -e "\a Ding dong\a"
echo "CIFS path must be \\\\NT-Server-Name\\ShareName"
echo -e "Sr.no\t DVD (price) "
echo -e "1\t Spirited Away (INR.200)"
echo -e "2\t Dragon Ball Z (INR.300)"

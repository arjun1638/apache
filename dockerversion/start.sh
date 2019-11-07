#!/bin/bash
date > /mnt/share/start.txt

/usr/sbin/apache2ctl -D FOREGROUND &

echo "Apache VNF started ..."
echo "ip add--------------"
ip route get 1 | awk '{print $NF; exit}'




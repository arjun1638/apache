#! /bin/bash
pkill apache2
sleep 2

python ./log_intf_statistics.py /tngbench_share/result.yml
cp /var/log/apache2/access.log /tngbench_share/
cp /var/log/apache2/.log /tngbench_share/

date > /mnt/share/stop.txt

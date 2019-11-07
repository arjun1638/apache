#! /bin/bash
sleep 1

gnuplot ab-plot.p

pkill apache2
sleep 2

python ./log_intf_statistics.py /tngbench_share/result.yml
cp /var/log/apache2/access.log /tngbench_share/
cp /var/log/apache2/.log /tngbench_share/

date > /tngbench_share/stop_time.txt

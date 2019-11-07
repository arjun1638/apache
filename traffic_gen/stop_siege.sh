#! /bin/bash
sleep 1
cp /var/log/apache2/.log /tngbench_share/
cp /var/log/siege.log /tngbench_share/

date > /tngbench_share/stop_time.txt

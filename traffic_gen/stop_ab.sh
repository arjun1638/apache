#! /bin/bash
sleep 1
python ./log_intf_statistics.py /tngbench_share/result.yml

sleep 5
gnuplot ab-plot.p

sleep 1
python ./process_ab_results.py /tngbench_share/cmd_start.log /tngbench_share/op.csv /tngbench_share/result.yml

date > /tngbench_share/stop_time.txt
#! /bin/bash
sleep 1
python ./process_iperf3_results.py /tngbench_share/process_iperf_op.json /tngbench_share/iperf_result.yml

date > /tngbench_share/stop_time.txt

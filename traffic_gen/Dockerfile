FROM ubuntu:xenial
LABEL maintainer="arjun1638@gmail.com"

RUN	apt-get update && apt-get install -y\
        software-properties-common \
        aptitude \
    	git \
        wget \
        python-dev \
        python-pip \
        python \
        python-yaml \
        net-tools \
        gnuplot\
        curl \
		iproute \
        inetutils-ping \
        iperf3 \
        iperf \
        apache2-utils\
        siege\
        httperf

ADD start.sh start.sh
RUN chmod +x start.sh
ADD stop_ab.sh stop_ab.sh
RUN chmod +x stop_ab.sh
ADD stop_iperf.sh stop_iperf.sh
RUN chmod +x stop_iperf.sh
ADD stop_simple_exit.sh stop_simple_exit.sh
RUN chmod +x stop_simple_exit.sh
ADD stop_siege.sh stop_siege.sh
RUN chmod +x stop_siege.sh
ADD ab-plot.p ab-plot.p
ADD process_iperf3_results.py process_iperf3_results.py
ADD process_ab_results.py process_ab_results.py
ADD log_intf_statistics.py log_intf_statistics.py


WORKDIR /
RUN mkdir /tngbench_share
CMD /bin/bash 
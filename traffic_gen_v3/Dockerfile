FROM ubuntu:xenial
LABEL maintainer="arjun1638@gmail.com"

RUN	apt-get update && apt-get -y upgrade && apt-get install -y\
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
        httperf\
        apache2 \
        php7.0\
        php7.0-mysql \ 
        libapache2-mod-php7.0\
        lynx-cur

ADD start.sh start.sh
RUN chmod +x start.sh
ADD stop.sh stop.sh
RUN chmod +x stop.sh
ADD ab-plot.p ab-plot.p


# Enable apache mods.
RUN a2enmod php7.0
RUN a2enmod rewrite

# Update the PHP.ini file, enable <? ?> tags and quieten logging.
RUN sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php/7.0/apache2/php.ini
RUN sed -i "s/error_reporting = .*$/error_reporting = E_ERROR | E_WARNING | E_PARSE/" /etc/php/7.0/apache2/php.ini
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

# Manually set up the apache environment variables
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

# Copy this repo into place.
ADD www /var/www/site

# Update the default apache site with the config we created.
ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf

ADD start.sh start.sh
RUN chmod +x start.sh
ADD stop.sh stop.sh
RUN chmod +x stop.sh

ADD log_intf_statistics.py log_intf_statistics.py
ADD process_ab_results.py process_ab_results.py

WORKDIR /
RUN mkdir /tngbench_share
CMD /bin/bash 
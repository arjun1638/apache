# apache
A) Apache server benchmarking using Apache bench 
    Prerequisite
    1. Apache bench 

    Steps:
    1. You can pull the image from using "docker pull arjun1638/apachev2"
    2. Run the image and start the apache server using "./start.sh" command
    3. Send the traffic using apache bench e.g "ab -n 10000 -c 100 -e /tngbench_share/op.csv -g /tngbench_share/op.data CONTAINER_IP"  with IP

B) Apache server benchmarking using traffic generation container 
    
    1. Pull  the docker container with traffic generator from docker "docker pull arjun1638/traffic_gen"
    2. Run the image and send the traffic using apache bench usinf above command 
    3. Once done, run './stop_ab.sh' to generate plot of the request send using apache bench.
    
C) You can also build the docker images using the dockerfile from repo.

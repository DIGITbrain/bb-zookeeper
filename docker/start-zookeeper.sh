#!/bin/bash
/home/kafka/bin/zookeeper-server-start.sh /home/kafka/config/zookeeper.properties &
wait -n
exit 0
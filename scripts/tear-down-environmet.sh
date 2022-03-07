#! /bin/bash

#stop and remove filebeat,kafka,zookeeper
docker container stop filebeat && docker container rm filebeat
docker container stop kafka && docker container rm kafka
docker container stop zookeeper && docker container rm zookeeper

#remove persistent volumes for zookeeper and kafka
docker volume rm zookeeper-data
docker volume rm kafka-data

#remove the network used by the containers to communicate
docker network rm filebeat-net
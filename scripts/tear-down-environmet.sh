#! /bin/bash

docker stop filebeat && docker rm filebeat
docker stop kafka && docker rm kafka
docker stop zookeeper && docker rm zookeeper

docker volume rm zookeeper-data
docker volume rm kafka-data

docker network rm filebeat-net
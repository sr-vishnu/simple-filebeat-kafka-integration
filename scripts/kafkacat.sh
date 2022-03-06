#! /bin/bash

source .env

docker run -it \
    --network=filebeat-net \
    edenhill/kcat:1.7.1 -b kafka:9092 -t ${KAFKA_TOPIC}
#! /bin/bash

source .env

docker run --rm -it \
    --network=filebeat-net \
    edenhill/kcat:1.7.1 -C -b kafka:9092 -t ${KAFKA_TOPIC}
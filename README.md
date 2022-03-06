## **simple-filebeat-kafka-integration**

A demo featuring filebeat kafka integration.

### **prerequisites:**
---
- install [docker](https://docs.docker.com/engine/install/)
- install [docker-compose](https://docs.docker.com/compose/install/)


### **clone the repo:**
---
```
git clone https://github.com/sr-vishnu/simple-filebeat-kafka-integration.git
```

### **setup:**
---
#### copy env.example to .env and modify the variables as per your requirement.
```
cd simple-filebeat-kafka-integration

cp env.example .env
```

- `CONFIG_PATH` - path which contains `filebeat.yml` this can be left as it is.
- `FILE_PATH` - path to the file which needs to be read by filebeat and writtern to kafka.

- `KAFKA_TOPIC` - the name of the output kafka topic.

### **Execution:**
---

- start `filebeat` , `kafka` and `zookeeper` containers

```
./script/init.sh
```

- view the results in `kafka`

```
./script/kafkacat.sh
```

- remove all `containers` , `volumes` and `networks` associated with this project.

```
./script/tear-down-environment.sh
```

---



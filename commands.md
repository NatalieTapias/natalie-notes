# Kafka

## Docker Kafka Commands
- *prerequisite*: running kafka in docker container (instructions TODO)
### Create a Topic      
- `docker run --rm -it --net=host confluentinc/cp-kafka kafka-topics --zookeeper 127.0.0.1:2181 --create --topic employee --partitions 1 --replication-factor 1`
## List all topics 
- `docker run --rm -it --net=host confluentinc/cp-kafka kafka-topics --zookeeper 127.0.0.1:2181 --list`
### Listen to a given topic from beginning
- `docker run --rm -it --net=host confluentinc/cp-kafka kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic topic_name --from-beginning`
### Describe topic
- `docker run --rm -it --net=host confluentinc/cp-kafka kafka-topics --zookeeper 127.0.0.1:2181 --describe --topic <topic-name>`

----------

## KafkaCat
`kafkacat -b hostname
-X security.protocol=sasl_ssl
-X sasl.mechanisms=SCRAM-SHA-512
-X sasl.username=access_key
-X sasl.password=secret
-L -t hello-stream`

`kafkacat -b bootstrap_server_name -X security.protocol=sasl_ssl
-X sasl.mechanisms=SCRAM-SHA-512
-X sasl.username=key
-X sasl.password=secret
-C -b hostname -t topic_name`

`kafkacat -b bootstrap_server_name -X security.protocol=sasl_ssl
-X sasl.mechanisms=SCRAM-SHA-512
-X sasl.username=key
-X sasl.password=secret
-C -b hostname -t topic_name
-f "\n Key (%K bytes): %k\t\nValue (%S bytes): %s\n"`

`kafkacat -b bootstrap_server_name -X security.protocol=sasl_ssl
-X sasl.mechanisms=SCRAM-SHA-512
-X sasl.username=key
-X sasl.password=secret
-C -b hostname -t topic_name
-p 0 -o beginning
-f "\n Key (%K bytes): %k\t\nValue (%S bytes): %s\n\Partition: %p\tOffset: %o\n--\n" \`

-----------

## Schema Registry
### Listing all the Schemas 
`curl http://localhost:8081/subjects/`

### Deleting A Schema (version, or all schemas) 
`curl -X DELETE http://localhost:8081/subjects/{schema name}/versions/{version to delete}`

## Get Config
`curl -X GET http://localhost:8081/config/`

### get config for a specific Schema
`curl -X GET http://localhost:8081/config/{schema name}`

### Set config for a subject
`curl -X PUT -H "Content-Type: application/vnd.schemaregistry.v1+json" --data '{"compatibility": "NONE"}' http://localhost:8081/config/{schema name}`

## update the Schema Registry API to add a schema for the topic `my-kafka`
`curl -X POST -H "Content-Type: application/vnd.schemaregistry.v1+json" --data '{"schema": "{\"type\":\"record\",\"name\":\"Payment\",\"namespace\":\"my.examples\",\"fields\":[{\"name\":\"id\",\"type\":\"string\"},{\"name\":\"amount\",\"type\":\"double\"}]}"}' http://localhost:8081/subjects/my-kafka-value/versions`

----------
## Avro Tools Copied From [Apache Kafka Series - Confluent Schema Registry & REST Proxy course](https://www.udemy.com/course/confluent-schema-registry/)

### put this in any directory you like
wget https://search.maven.org/remotecontent?filepath=org/apache/avro/avro-tools/1.8.2/avro-tools-1.8.2.jar
### run this from our project folder. Make sure ~/avro-tools-1.8.2.jar is your actual avro tools location
java -jar ~/avro-tools-1.8.2.jar tojson --pretty customer-generic.avro 
java -jar ~/avro-tools-1.8.2.jar tojson --pretty customer-specific.avro 

### getting the schema
java -jar ~/avro-tools-1.8.2.jar getschema customer-specific.avro 




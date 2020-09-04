# Schema Management 
from [confluent docs](https://docs.confluent.io/current/schema-registry/index.html#schemas-subjects-and-topics)
Confluent Schema Registry is a serving layer for metadata, with a RESTful interface for storing/retrieving schemas (Avro, JSON, or Protobuf). It stores versioned history of schemas based on a *subject name strategy* and *compatibility settings*. It provides serializers that plug into Kafka clients that handle schema storage and retrieval for Kafka messages. 

- Globally unique ID to each registered schema.
- Designed to be distributed with single-primary architecture; ZooKeeper/Kafka coordinates the primary election based on config. 

## Schemas, Subjects, Topics
* A kafka *topic* contains messages, and each message is a key-value pair. Either hte message key or the message value, or both, can be serialized as Avro, JSON, or Protobuf. 
* A *schema* defines the structure of the data format. 
* Kafka topic name can be independent of the schema name. 
* Schema registry defines a scope in which schemas can evolve, and that scope is the *subject*. 
* The name of the subject depends on the subject name strategy, which by default is set to derive subject name from topic name.

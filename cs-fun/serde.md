# SERDE serialization and deserialization
## definition (in Java)
Persisting objects!
*Serialization* is a mechanism of converting the state of an object to a byte stream.
*Deserialization* is the reverse process where the byte stream is used to recreate the actual Java object in memory.

The byte stream created is platform independent, and can be deserialized on a different platform. 
To make an object serializable we implement the java.io.Serializable interface. It is a *marker interface* (has no data member and method). It is used to "mark" java classes so htat objects of htese classes may get certain capability. 

1. If parent class has implemented Serializable interface then child class doesn't need to implement it, vice-versa is not true.
2. Only non-static data members are saved via Serialiation process.
3. Static data members and transient data members are not saved via Serialization process. 
4. Constructor of an objecct is never called when an object is deserialized.
5. Associated objects must be implementing Serializable interface.
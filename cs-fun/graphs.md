# Adjacency Lists 
* Adjacency lists are a way of representing graphical relationships between entities. 
* They are a collection of unordered lists used to represent a finite graph. 
* Each list describes the set of neighbors of a vertex in the graph
* The main operation performed by the adjacency list data structure is to report a list of the neighbors of a given vertex. Total time to report all the neighbors of a vertex v is proportional to the degree of v (the number of edges that are incident to the vertex)

## Adjacency lists in dynamodb
https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/bp-adjacency-graphs.html
Best practices for Managing Many-to-Many Relationships
Adjacency lists are a design pattern that is useful for modeling many-to-many relationships in dynamodb. 

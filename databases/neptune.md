# Amazon Neptune 
fully managed graph database service
optimiezed for storing billions of relationships and fast queries 

## What is a graph database 
Purpose-build to store and navigate relationships. 
### when might I use a graph database
* social networking, recommendation engines, and fraud detection 

nodes = data entities
edges = relationships


# Neptune graph data model
basic unit is a four-position (quad) element; similar to a Resource Description Framework (RDF): 
* subject (S)
* predicate (P)
* object (O) 
* graph (G)

*Relationship* between two verticies can be represented by storing the source vertex identifier in the S position, the target vertex identifier in the O position and the edge label in the P position.

*Property* can be represented by storing the element identifier in the S position, the property key in the P position and the property value in the O position

Indexes in Neptune:
SPOG
POGS
GPSO
for many of the most common access patterns
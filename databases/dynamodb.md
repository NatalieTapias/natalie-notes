# DynamoDB

## what is it 
A fully managed NoSQL database service that can store any amount of data and serve and level of request traffic.

### Tables, Items, Attributes:
- table: table is a collection of data
- items: each table contains zero or more items; a group of attributes that is uniquely identifiable among all the other items
- attributes: each item is composed of one or more attribute: a fundamental data element


### Primary Key
- when you create the table, you need a *tablename* and *primary key*. Primary key uniquiely identifies each item in the table so that no two items can have the same key. 
- two types of primary key in DynamoDB are supported: *partition key* and *partition key and sort key* (aka composite primary key)
#### Partition Key
- single primary key composed of one attribute 
#### Composite Primary Key (partition key and sort key)
- stored using the partition key value as input to internal hash function, then in sort order 
#### Secondary Indexes
- you can create 1 or more secondary indexes on a table; it lets you query the data in the table using an alternate key in addition to queries against hte primary key. Either *global* or *local* secondary indexes.

-----
A managed no SQL database provided by AWS. Great for read-intensive applications.
2 read consistency types: eventually & strongly consistent 
Eventually consistency is the default, but can throw "dirty reads"
If essential that application provides most consistent set strong consistency 

Provisioned Throughput Capacity 
Write-thorughput - Read-throughput 
Expensive for writes, cheap for reads 
# terms
[explaining AWS dynamodb schema design](https://www.youtube.com/watch?v=XvD2FrS5yYM)
primary key: can be a partition key OR partition key and a sort key.
what is a partition key? 
- uses the key value as an input to the hashing function, output is a physical location on a dynamodb paritition (which out of group of machines hosting your data) 
sort key (also called the range key) : if you choose to specify - in sorted order, by the value of the sort key 

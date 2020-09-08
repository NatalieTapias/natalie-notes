# DynamoDB
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

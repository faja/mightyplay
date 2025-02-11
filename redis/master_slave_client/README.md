# play

```sh
# master
redis-server --protected-mode no

# slave
redis-server --protected-mode no --replicaof master 6379

# client
redis-cli -h master
    master> INFO replication
    master> SADD set01 item01

redis-cli -h slave
    slave> INFO replication
    slave> SMEMBERS set01
```

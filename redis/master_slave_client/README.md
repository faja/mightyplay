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

### redis ruby test scripts
- `src/redis-rb-cluster` - cloned from https://github.com/antirez/redis-rb-cluster
- `apt-get -y install ruby && gem install redis`
- run example test
    ```sh
    cd /src/redis-rb-cluster
    ruby example.rb master 6379
    ```

- master
```sh
systemctl stop redis
systemctl disable redis
redis-server --protected-mode no
```

- slave
```sh
systemctl stop redis
systemctl disable redis
redis-server --protected-mode no --replicaof master 6379
```

- client
    ```sh
    systemctl stop redis
    systemctl disable redis
    redis-cli -h master
    redis-cli -h slave
    ```
    - client on master
        ```sh
        INFO replication
        SADD set01 item01
        ```
    - client on slave
        ```sh
        INFO replication
        SMEMBERS set01
        ```

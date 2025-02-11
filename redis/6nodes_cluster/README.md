
### redis ruby test scripts

- `src/redis-rb-cluster` - cloned from https://github.com/antirez/redis-rb-cluster
- `apt-get -y install ruby && gem3.1 install redis`
- run example test
```sh
cd /src/redis-rb-cluster
ruby example.rb node20 6379
```
- run consistency test
```sh
cd /src/redis-rb-cluster
ruby consistency-test.rb node20 6379
```

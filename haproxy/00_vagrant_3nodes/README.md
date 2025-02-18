# play

- `h00`
    ```sh
    vagrant ssh h00
    docker run -it --entrypoint bash -v /src:/etc/haproxy -p 8080:8080 haproxy:3.0.8
    haproxy -W -f /etc/haproxy
    ```

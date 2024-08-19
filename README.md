### docker-redis
redis-api를 로컬 도커에서 테스트해보기 위한 Dockerfile 및 config입니다.<br/>
redis-api를 실행하기 전에 선행해주세요 :)

1. docker build
   ```
   docker build -t redis .
   ```
2. docker run
   ```
   docker run -d -p 6379:6379 redis
   ```
3. redis healthcheck
   CID를 통해서 redis의 healthcheck를 하는 방법입니다.
   ```
   docker ps
   ```
   ex) CONTAINER ID **(CID)**
   ```
   CONTAINER ID   IMAGE     COMMAND                   CREATED         STATUS         PORTS                    NAMES
    <CID>         redis     "docker-entrypoint.s…"   3 seconds ago   Up 2 seconds   0.0.0.0:6379->6379/tcp   loving_engelbart
   ```
    ```
    docker exec -i -t <CID> /bin/bash
    redis-cli ping
    ```
    ex) answer
    ```
    PONG
    ```

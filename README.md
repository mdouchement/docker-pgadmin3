# pgadmin3 with docker

- Run postgres container
```bash
docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres:latest
```

- Run pgadmin container
```bash
docker run --rm --name pgadmin --link postgres:postgres -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY mdouchement/pgadmin3:1.20.0
```

 - host: `postgres`
 - port: `5432`
 - username: `postgres`
 - password: `postgres`
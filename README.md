### Crear red de docker
```bash
$ docker network create net-library
```

### Crear volumen de docker
```bash
$ docker volume create vol-library-security-app
``` 

### Crear imagen
```bash
$ docker build -t library-security:latest .
```

### Crear contenedor
```bash
$ docker run --name library-security -d --hostname securityapi -p 8080:8080 --network net-library -v vol-library-security-app:/usr/local/tomcat/volume library-security
```

# Docker Pico Engine
[PicoLabs](http://picolabs.io/) pico-engine and krl-compiler in a convenient docker image.

[DockerHub](https://hub.docker.com/r/chocklymon/pico-engine/)

## Run

Pull the latest version `docker pull chocklymon/pico-engine`

### Pico Engine

```
docker run -d -p 8080:8080 -v pico-engine:/root/.pico-engine -i chocklymon/pico-engine
```

The -d flag has docker start the container detached (in the background).  
The -p 8080:8080 flag causes port 8080 on the host machine to be bound to port 8080 in the running container. This way the pico engine can be accessed at localhost:8080.  
The -v pico-engine:/root/.pico-engine mounts a volume to the container. This makes the pico engine state persistent by having the pico state written to the local directory pico-engine.  

### KRL Compiler

Run `docker run -i docker pull chocklymon/pico-engine krl-compiler < ruleset.krl`

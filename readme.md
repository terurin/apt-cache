# How to Use

1. install docker and docker compose,git
  + setup to run docker without root.
2. git clone this repository
3. run script by `bash run.sh`
4. write configuration to `/etc/apt/apt.conf.d/01proxy`
```
Acquire::HTTP::Proxy "http://172.17.0.1:3142";
Acquire::HTTPS::Proxy "false";
```

# Docker-compose
```
RUN echo 'Acquire::HTTP::Proxy "http://172.17.0.1:3142";' >> /etc/apt/apt.conf.d/01proxy \
 && echo 'Acquire::HTTPS::Proxy "false";' >> /etc/apt/apt.conf.d/01proxy
```
# Reference
[docker hub/apt-cacher-ng](https://hub.docker.com/r/sameersbn/apt-cacher-ng)
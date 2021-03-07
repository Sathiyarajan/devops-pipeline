# docker notes
 
### docker installation 

```
sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update

sudo apt-get install 
    apt-transport-https 
    ca-certificates 
    curl 
    gnupg-agent 
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu 
   $(lsb_release -cs) 
   stable"
   
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io
```
### to build a code & docker image:

```
git clone https://github.com/Sathiyarajan/best-project.git

cd best-project/docker/nodejs-web-app

docker build -t <dockerhub_username>/flaskapp:1.1 .

docker run -ti 5103c1f975dc /bin/bash

docker run -d -p 5000:5000 8f6adb7689b5

docker logs 5103c1f975dc

docker logout

docker login

curl http://localhost:5000             
Hello World!#                 

docker push sathyadev/flaskapp:1.1

docker pull sathyadev/flaskapp:1.1

docker rmi -f <imaegeId>

docker rm -f <containerId>
```

Reference: https://github.com/spring-petclinic/spring-framework-petclinic


### run a sample web app

```
docker run -p 8080:8080 springcommunity/spring-framework-petclinic
```

# docker-tutorial-devops

1. Docker
2. DevOps
3. Docker Compose
4. Docker Swarm
5. Docker Machine
6. DockerHub

### Show docker images list

```
  docker images
```
### Login DockerHub
```
 docker login
```
### docker run
```
  docker run busybox:1.24 echo "hello world"
  docker run busybox:1.24 ls /
  docker run -it busybox:1.24 (interactive mode)
  docker run -d busybox:1.24 sleep 1000 (docker run in background mode)
  docker run --rm busybox:1.24 sleep 1 (remove when finish run)
  docker run --name hello_world busybox:1.24 (define name for container)
```
### docker inspect
```
 docker inspect <container id>
```
### docker inspect
```
 docker inspect <container id>
```
### docker logs
```
  docker run -it -d -p 8888:8080 tomcat:8.0 (-p host_port : container_port)
  docker logs <container id>
```
### docker image layer history
```
 docker history busybox:1.24
 docker run -it debian:jessie
 apt-get update && apt-get install -y git (install git in container)
 exit
 docker history debian:jessie
```
### docker commit to create image
```
  docker container ls -a
  docker commit <container id> sathyadev/debian:1.0 (commit a new image from container id)
  docker images
  docker history sathyadev/debian:1.0
  docker run -it sathyadev/debian:1.0
```
### Docker file to create image
```
  docker build -t sathyadev/debian .
  docker images
  docker history sathyadev/debian:latest
  docker build -t sathyadev/debian:latest . --no-cache=true (no cache mode)
```
### push docker image to docker hub
```
  docker login (must login docker hub)
  docker tag <image id> sathyadev/debian:1.01
  docker push sathyadev/debian:1.01
```
### use Dcokerfile to create a containerize python app
```
  docker build -t dockerapp:0.1 .
  docker run -d -p 5000:5000 <image id>
  docker exec -it <container id> bash
  ps aux
```
### use Dcokerfile to create a containerize python app
```
  cd dockerapp
  docker build -t dockerapp:v0.1 .
  docker run -d -p 5000:5000 dockerapp:v0.1
  docker exec -it <container id> bash
  ps aux
```
### use docker --link to link a two container(flask and redis) app
```
  cd dockerapp0.3
  docker build -t dockerapp:v0.3 .
  docker images
  docker run -d --name redis redis:3.2.0
  docker run -d -p 5000:5000 --link redis dockerapp:v0.3
```
### use docker-compose create two container(flask and redis) app
```
  docker-compose version 
  cd dockerapp0.3
  docker-compose up
  docker-compose up -d (run in background)
  docker-compose ps
  docker-compose logs -f (monitor log)  
  docker-compose logs <app_name>
  docker-compose stop
  docker-compose rm
  docker-compose build (force rebuild)
```
### four types docker network
```
  (None Network, support one host network)
  docker network ls
  docker run -d --net none busybox sleep 1000 (none network)
  docker exec -it <container id> /bin/ash
  ping 8.8.8.8 (no reach, only loopback network)
  
  (Bridge Network, support one host network)
  docker network ls
  docker network inspect bridge
  docker run -d --name c_1 busybox sleep 1000 (default bridge network)
  docker exec -it c_1 ifconfig (two network interface)
  docker run -d --name c_2 busybox sleep 1000 (default bridge network)
  docker exec -it c_2 ifconfig (two network interface)
  docker exec -it c_1 ping 172.17.0.3 (c_1 ping c_2)
  docker network create --driver bridge my_bridge
  docker network inspect my_bridge
  docker run -d --name c_3 --net my_bridge busybox sleep 1000 (use my_bridge network)
  docker exec -it c_3 ifconfig (c3 ip in my_bridge network)
  docker exec -it c_3 ping 172.17.0.2 (c_3 ping c_1, no reach)
  docker network connect bridge c_3 (connect c_3 and default bridge network)
  docker exec -it c_3 ifconfig (c3 ip in bridge and my_bridge network)
  docker exec -it c_3 ping 172.17.0.3 (my_bridge c_3 can ping bridge c_2)
  docker network disconnect bridge c_3 (disconnect c_3 and default bridge network)
 
  (Host Network, support one host network)
  docker run -d --name c_4 --net host busybox sleep 1000
  docker exec -it c_4 ifconfig (c4 run on host machine network)
  
  (Overlay Network, support multi-host network)
  need Running Docker engine in Swarm mode
  need A key-value store such as consul
  most use on production mode
```

### define container network with docker-compose
```
  cd dockerapp0.4
  docker-compose up -d
  docker network ls (dockerapp0.4 app run on dockerapp04_my_net)
```

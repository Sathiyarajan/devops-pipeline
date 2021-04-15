# best-project
sample repository for devops engineers

# Devops pipeline for UBUNTU 18.04

# Docker overview

### without docker
![Docker](https://user-images.githubusercontent.com/16596464/111037600-cf949680-844a-11eb-8d31-b15905ed9d10.jpg)

### after docker

![after-docker](https://user-images.githubusercontent.com/16596464/111037688-3fa31c80-844b-11eb-9531-076df8a35c8a.jpg)

# docker commands
 
# docker installation remove older version

`sudo apt-get remove docker docker-engine docker.io containerd runc`

`sudo apt-get update`

`sudo apt-get install 
    apt-transport-https 
    ca-certificates 
    curl 
    gnupg-agent 
    software-properties-common`

`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`

`sudo apt-key fingerprint 0EBFCD88`

`sudo add-apt-repository
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu 
   $(lsb_release -cs) 
   stable"`
   
`sudo apt-get update`

`sudo apt-get install docker-ce docker-ce-cli containerd.io`

# to build a code & docker image:

`git clone https://github.com/Sathiyarajan/best-project.git`

`cd best-project/docker/nodejs-web-app`

`docker build -t <dockerhub_username>/flaskapp:1.1 .`

`docker run -ti 5103c1f975dc /bin/bash`

`docker run -d -p 5000:5000 8f6adb7689b5`

`docker logs 5103c1f975dc`

`docker logout`

`docker login`


curl http://localhost:5000             
Hello World!#                 

`docker push sathyadev/flaskapp:1.1`

`docker pull sathyadev/flaskapp:1.1`

`docker rmi -f <imaegeId>`

`docker rm -f <containerId>`

Reference: https://github.com/spring-petclinic/spring-framework-petclinic

#run postgres image
docker run --name postgres-petclinic -e POSTGRES_PASSWORD=petclinic -e POSTGRES_DB=petclinic -p 5432:5432 -d postgres:9.6.0

# run a sample web app
docker run -p 8080:8080 springcommunity/spring-framework-petclinic

# practice the image build & push it to repo by following the nodejs app



# docker-compose spring boot app with multiple instances

```
https://thepracticaldeveloper.com/dockerize-spring-boot/
https://github.com/mechero/spring-boot-hola-docker
```

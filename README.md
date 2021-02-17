# best-project
sample project

#docker commands for practice
 
docker build -t sathyadev/flaskapp:1.1 .

docker run -ti 5103c1f975dc /bin/bash

docker run -d -p 5000:5000 8f6adb7689b5

docker logs 5103c1f975dc

[root@ubuntu dockerized-components ]$ curl http://localhost:5000             
Hello World!#                 

docker logout
docker login
 
curl http://localhost:5000             
Hello World!#                 

docker push sathyadev/flaskapp:1.1
docker pu sathyadev/flaskapp:1.1

docker rmi -f <imaegeId>
docker rm -f <containerId>


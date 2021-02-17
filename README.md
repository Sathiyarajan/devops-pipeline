# best-project
sample project



[root@ubuntu dockerized-components ]$ docker build -t sathyadev/flaskapp:1.1 .
Sending build context to Docker daemon   7.68kB
Step 1/6 : FROM python:3.8
 ---> 8f6adb7689b5
Step 2/6 : WORKDIR /code
 ---> Using cache
 ---> 4021d2ccf4ed
Step 3/6 : COPY requirements.txt .
 ---> Using cache
 ---> 0334921736ae
Step 4/6 : RUN pip install -r requirements.txt
 ---> Using cache
 ---> 3601963c171a
Step 5/6 : COPY src/ .
 ---> 68d7420487e8
Step 6/6 : CMD [ "python", "./server.py" ]
 ---> Running in c6efbf6a6b83
Removing intermediate container c6efbf6a6b83
 ---> 5103c1f975dc
Successfully built 5103c1f975dc
Successfully tagged sathyadev/flaskapp:1.0

docker run -ti 5103c1f975dc /bin/bash

docker run -d -p 5000:5000 8f6adb7689b5

docker logs 5103c1f975dc

[root@ubuntu dockerized-components ]$ curl http://localhost:5000             
Hello World!#                 


[root@ubuntu dockerized-components ]$ docker logout
Removing login credentials for https://index.docker.io/v1/
[root@ubuntu dockerized-components ]$ docker login
Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
Username: sathyadev
Password: 
WARNING! Your password will be stored unencrypted in /root/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credentials-store

Login Succeeded
[root@ubuntu dockerized-components ]$ 


[root@ubuntu dockerized-components ]$ curl http://localhost:5000             
Hello World!#                 

docker push sathyadev/flaskapp:1.1
docker push sathyadev/flaskapp:1.1

docker rmi -f <imaegeId>
docker rm -f <containerId>


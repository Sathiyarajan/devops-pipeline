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


# jenkins installation in ubuntu & AWS:

Jenkins installation ubuntu:
in AWS: 
jenkins ci aws :

https://medium.com/@Marklon/how-to-install-jenkins-on-ubuntu-16-04-on-aws-e584c45c2684

https://medium.com/@kryptonian1111/installing-jenkins-on-ec2-9bb51d8bd670


sudo apt install default-jdk
sudo apt install default-jdk
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
sudo systemctl status jenkins
sudo ufw allow 8080
sudo ufw status
sudo ufw enable
cat /var/lib/jenkins/secrets/initialAdminPassword
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

sudo systemctl start jenkins

YOURPORT=8080
PERM="--permanent"
SERV="$PERM --service=jenkins"

firewall-cmd $PERM --new-service=jenkins
firewall-cmd $SERV --set-short="Jenkins ports"
firewall-cmd $SERV --set-description="Jenkins port exceptions"
firewall-cmd $SERV --add-port=$YOURPORT/tcp
firewall-cmd $PERM --add-service=jenkins
firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd --reload

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

localhost:8080

sudo apt install default-jdk

sudo apt install default-jdk

sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt-get update

sudo apt-get install jenkins

sudo systemctl status jenkins

sudo ufw allow 8080

sudo ufw status

sudo ufw enable

sudo systemctl start jenkins

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

localhost:8080

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

localhost:8080

git commands:

to commit a code:

to download a repo:
git clone https://github.com/Sathiyarajan/best-project.git

to create a branch 
git checkout -b besant_sathya

git status

add files

git add .

git commit -m "commit message"

git push origin besant_sathya



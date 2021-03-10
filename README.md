# devops-bible

Reference repository for Devops engineers


# Ansible


### ansible docker image for setting up ansible

`docker build -t sathyadev/ubuntu-ansible:18.04 .`

`sudo docker run --net=host --rm -it -v $(pwd)/app/:/app:ro -v $HOME/.ssh:/root/.ssh 07acb63e26a9 bash`

### to run ansible playbook run the below commands

`ansible-playbook install-site.yml -vv -i hosts`


### incaseof any issues, follow the commands

```
  pip list
  pip uinstall docker 
  pip uninstall docker
  pip install docker==="2.5.1"
  pip install dockerpty==="0.4.1"
```

# ssh localhost setup

`ssh localhost`

# if not then setup ssh by running the below commands:

`sudo apt-get install openssh-server openssh-client -y` 

# for local user  

# SSH - secure shell

### ssh localhost setup

`ssh localhost`

### if not then setup ssh by running the below commands:

`sudo apt-get install openssh-server openssh-client -y` 

### for local user  

`cd ~`

`ssh-keygen -t rsa -P ""` (press enter without typing anything)

`cp .ssh/id_rsa.pub .ssh/authorized_keys`

`ssh localhost`

### for admin/sudo/root user

`sudo su`

`cd ~`

`ssh-keygen -t rsa -P ""` (press enter without typing anything)

`cp .ssh/id_rsa.pub .ssh/authorized_keys`

`ssh localhost`

# pip2 & ansible installation

### pip2 & ansible installation

`sudo apt install python-pip`

`pip install ansible`

### Ansible version check

`ansible --version

ansible 2.8.5
  config file = /etc/ansible/ansible.cfg
  configured module search path = [u'/root/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/local/lib/python2.7/dist-packages/ansible
  executable location = /usr/local/bin/ansible
  python version = 2.7.17 (default, Sep 30 2020, 13:38:04) [GCC 7.5.0]`


# Ansible playbook run

### Ansible playbook run

`git clone https://github.com/Sathiyarajan/best-project.git`

`cd best-project/ansible`

`ansible-playbook install-site.yml -vv -i hosts` 

# Docker 
### docker commands
 
### remove older version

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

### to build a code & docker image:

`git clone https://github.com/Sathiyarajan/best-project.git`

`cd best-project/docker`

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

# Jenkins
### jenkins installation in ubuntu & AWS:

https://medium.com/@Marklon/how-to-install-jenkins-on-ubuntu-16-04-on-aws-e584c45c2684

https://medium.com/@kryptonian1111/installing-jenkins-on-ec2-9bb51d8bd670

### installation steps

`sudo apt install default-jdk`

`sudo apt install default-jdk`

`sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -`

`sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'`

`sudo apt-get update`

`sudo apt-get install jenkins`

### to check the status of jenkins installation

`sudo systemctl status jenkins`

### enable the 8080 port for Jenkins CI UI

`sudo ufw allow 8080`

`sudo ufw status`

`sudo ufw enable`

### to start jenkins 

`sudo systemctl start jenkins`

### login to jenkins and proceed with the next steps:

`https://localhost:8080`

### get the password & proceed with the next steps:

`sudo cat /var/lib/jenkins/secrets/initialAdminPassword`


# git & git repo commands:

### to download a repo:

`git clone https://github.com/Sathiyarajan/best-project.git`

### to create a branch 

`git checkout -b besant_sathya`

### check the files added

`git status`

### check the difference between local files & remote git repo files

`git diff`

### to add files to a local repo

`git add .`

### commit a fies to local repo

`git commit -m "commit message"`

### push the code to remove git repo

`git push origin besant_sathya`

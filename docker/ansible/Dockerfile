# Dockerfile

# pull base image
FROM ubuntu:18.04

MAINTAINER William Yeh <william.pjyeh@gmail.com>

RUN echo "===> Adding Ansible's prerequisites..."   && \
    apt-get update -y            && \
    DEBIAN_FRONTEND=noninteractive  \
        apt-get install --no-install-recommends -y -q  \
                build-essential                        \
                python python-pip python-dev           \
                libffi-dev libssl-dev                  \
                libxml2-dev libxslt1-dev zlib1g-dev    \
                git                                 && \
    echo "--> Upgrading pip..."                     && \
    python -m pip install --upgrade pip             && \
    pip install --upgrade setuptools wheel          && \
    pip install --upgrade pyyaml jinja2 pycrypto    && \
    pip install --upgrade pywinrm                  

    
RUN apt-get install software-properties-common -y && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install ansible -y

RUN DEBIAN_FRONTEND=noninteractive && \
        apt-get install --no-install-recommends -y -q  \
		apt-transport-https ca-certificates curl gnupg-agent software-properties-common && \
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
	apt-key fingerprint 0EBFCD88 && \
	add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
	apt-get update && \
	apt-get install --no-install-recommends -y -q docker-ce docker-ce-cli containerd.io 

RUN echo "===> Installing handy tools (not absolutely required)..."  && \
    apt-get install -y sshpass openssh-client  && \
    \
    \
    echo "===> Clean up..."                                         && \
    apt-get remove -y --auto-remove \
            build-essential python-pip python-dev git libffi-dev libssl-dev  && \
    apt-get clean                                                   && \
    rm -rf /var/lib/apt/lists/*                                     && \
    \
    \
    echo "===> Adding hosts for convenience..."  && \
    mkdir -p /etc/ansible                        && \
    echo 'localhost' > /etc/ansible/hosts


ENV PATH        /opt/ansible/bin:$PATH
ENV PYTHONPATH  /opt/ansible/lib:$PYTHONPATH
ENV MANPATH     /opt/ansible/docs/man:$MANPATH

# default command: display Ansible version
CMD [ "ansible-playbook", "--version" ]

WORKDIR /app
COPY  app/  .

RUN echo localhost > inventory

CMD [ "ansible-playbook", "--version" ]

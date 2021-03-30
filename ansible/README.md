## dev environment setup repo for Devops engineers

## Ansible architecture


![Ansible](https://user-images.githubusercontent.com/16596464/111037559-9e1bcb00-844a-11eb-926b-b2674eb5aa5b.jpg)

### pip2 & ansible installation for ubuntu

`sudo apt install python-pip`

`pip install ansible`

### Ansible version check

```
ansible --version

ansible 2.8.5
  config file = /etc/ansible/ansible.cfg
  configured module search path = [u'/root/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/local/lib/python2.7/dist-packages/ansible
  executable location = /usr/local/bin/ansible
  python version = 2.7.17 (default, Sep 30 2020, 13:38:04) [GCC 7.5.0]
  ```
  
### Ansible playbook run

`git clone https://github.com/Sathiyarajan/devops-pipeline.git`

`cd devops-pipeline/ansible`

`ansible-playbook install-site.yml -vv -i hosts`

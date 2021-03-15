## Kubernetes complete architecture

![image](https://user-images.githubusercontent.com/16596464/111157458-e824be00-85bc-11eb-8d7e-f411994ec078.png)

### REPOSITORY                           TAG             IMAGE ID       CREATED         SIZE

```
hello-kubernetes                     1.9             86a3dddf4b22   10 hours ago    123MB
k8s.gcr.io/kube-proxy                v1.20.4         c29e6c583067   3 weeks ago     118MB
k8s.gcr.io/kube-apiserver            v1.20.4         ae5eb22e4a9d   3 weeks ago     122MB
k8s.gcr.io/kube-controller-manager   v1.20.4         0a41a1414c53   3 weeks ago     116MB
k8s.gcr.io/kube-scheduler            v1.20.4         5f8cb769bd73   3 weeks ago     47.3MB
cloudnativelabs/kube-router          latest          1c170082c326   3 months ago    93.5MB
k8s.gcr.io/coredns                   1.7.0           bfe3a36ebd25   9 months ago    45.2MB
calico/node                          v3.11.3         4f4edb11a2f4   9 months ago    261MB
calico/pod2daemon-flexvol            v3.11.3         8a7b52b94812   9 months ago    112MB
calico/cni                           v3.11.3         0f4b3848f931   9 months ago    222MB
k8s.gcr.io/pause                     3.2             80d28bedfe5d   13 months ago   683kB
node                                 13.6.0-alpine   2d8f48ba52b1   14 months ago   112MB
quay.io/coreos/etcd                  v3.3.18         f4fe69798c9e   15 months ago   45.9MB
haproxy                              1.9.8           cccda2015ff6   20 months ago   89.7MB
quay.io/coreos/flannel               v0.11.0         ff281650a721   2 years ago     52.6MB
```

https://www.bluematador.com/learn/kubectl-cheatsheet

commands used for k8s setup:

[root@node1 ~]# history
    1  yum install vim
    2  vim
    3  git
    4  yum install git
    5  exit
    6  git
    7  yum install vim git -y
    8  exi
    9  exit
   10  cat ~/.kube/config
   11  kubectl get pods
   12  exit
   13  cd /root/.ssh/
   14  ls
   15  vim authorized_keys
   16  ls
   17  cd /home/sath
   18  cd /home/sathya
   19  exit
   20  cd /root/
   21  ls
   22  cd .ssh/
   23  ls
   24  cat
   25  cat authorized_keys
   26  cat /home/sathya/.ssh/
   27  exit
   28  ls
   29  cd /root/
   30  ls
   31  cd .ssh/
   32  ls
   33  vim authorized_keys
   34  ll
   35  vim authorized_keys
   36  pwd
   37  exit
   38  ls
   39  ll
   40  ls -a
   41  cd .ssh/
   42  ls
   43  cat authorized_keys
   44  cd ..
   45  cp .ssh/id_rsa.pub .ssh/authorized_keys
   46  cp .ssh/id_rsa.pub .ssh/authorized_keys
   47  ssh localhost
   48  vim .ssh/authorized_keys
   49  exit
   50  ssh localhost
   51  ssh-keygen -t rsa -P ""
   52  cp .ssh/id_rsa.pub .ssh/authorized_keys
   53  cd ../
   54  cp .ssh/id_rsa.pub .ssh/authorized_keys
   55  cd /root/
   56  ls
   57  sudo su
   58  exit
   59  kubectl port-forward -n kubernetes-dashboard service/kubernetes-dashboard 7000:80 &
   60  exit
   61  yum install vim
   62  vim .ssh/authorized_keys
   63  vim .ssh/authorized_keys
   64  exit
   65  docker ps
   66  kubectl get pods
   67  curl http://f7a4cdab9f21:8080
   68  curl http://localhost:8080
   69  curl http://localhost:8083
   70  curl http://localhost:8080
   71  kubectl describe secret $(kubectl get secret | grep cluster-admin | awk '{print $1}')
   72  ls
   73  git clone https://github.com/kubernetes-up-and-running/examples.git
   74  cd examples/
   75  ls
   76  history
   77  ls
   78  ls | grep mysql
   79   kubectl apply -f 13-6-mysql-replicaset.yaml
   80   kubectl apply -f 13-7-mysql-service.yaml
   81   kubectl apply -f 13-6-mysql-replicaset.yaml
   82  vim 13-6-mysql-replicaset.yaml
   83  docker ps
   84  docker images
   85  kubectl get pods
   86  curl http://b5edab83205d:8080
   87  curl http://node1:8080
   88  curl http://node1:8083
   89  curl http://node1:8081
   90  curl http://node1:8080
   91  curl http://localhost:8080
   92  curl -o  http://localhost:8080
   93  curl -o http://localhost:8080
   94  curl http://localhost:8080
   95  kubectl run alpaca-prod --image=gcr.io/kuar-demo/kuard-amd64:blue --replicas=3 --port=8080 --labels="ver=1,app=alpaca,env=prod"
   96  kubectl create deployment alpaca-prod --image=gcr.io/kuar-demo/kuard-amd64:blue --replicas=3 --port=8080 --output yaml --dry-run=client >alpaca-prod.yaml
   97          kubectl apply -f https://raw.githubusercontent.com/cloudnativelabs/kube-router/master/daemonset/kubeadm-kuberouter.yaml
   98  kubectl run wildfly --image=jboss/wildfly --port=8080
   99  ls
  100  cd ../
  101  ls
  102  cd ../
  103  ls
  104  exit
  105  kubectl port-forward -n kubernetes-dashboard service/kubernetes-dashboard 7000:80 &
  106  kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}')
  107  kubectl port-forward -n kubernetes-dashboard service/kubernetes-dashboard 7000:80 &
  108  ls
  109  cd ../
  110  ls
  111  exit
  112  ssh -L 127.0.0.1:8080:127.0.0.1:8080 root@node1
  113  ls
  114  exit
  115  exit
  116  ls
  117  pwd
  118  ls
  119  cat .ssh/authorized_keys
  120  docker images
  121  kubectl port-forward -n kubernetes-dashboard service/kubernetes-dashboard 7000:80 &
  122  exit
  123  kubectl port-forward -n kubernetes-dashboard service/kubernetes-dashboard 7000:80 &
  124  netstat -tupln | grep 7000
  125  netstat -tupln
  126  kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}')
  127  docker images
  128  docker run -ti 86a3dddf4b22 npm start
  129  kubectl get -w pods
  130  lsb_release
  131  lsb_release -a
  132  exit
  133  netstat -tupln | grep 7000
  134  curl 192.168.120.11:7000
  135  exit
  136  docker images
  137  ls
  138  git clone https://github.com/Sathiyarajan/devops-pipeline.git
  139  git clone https://github.com/Sathiyarajan/docker-kafka.git
  140  ls
  141  cd docker-kafka/
  142  ls
  143  rm -rf .git*
  144  ls .git
  145  git status
  146  cd ../
  147  pwd
  148  ls
  149  cp -r docker-kafka/ devops-pipeline/docker/
  150  ls
  151  cd devops-pipeline/
  152  ls
  153  git status
  154  pwd
  155  cd ../
  156  ls
  157  git clone https://github.com/Sathiyarajan/aws-pipeline.git
  158  ls
  159  cd aws-pipeline/
  160  ls
  161  mkdir notes
  162  ls git
  163  ls
  164  mv -r AWS-CLI-Pagination-Commands.txt      notes
  165  mv -r RDSBootStrap.sh                    notes
  166  mv -r docker-singlecontainer-v1.zip notes
  167  mv -r BootStrap-script.txt                 notes
  168  mv -r docker-singlecontainer-v2.zip notes
  169  mv -r CLoudFormationAccessPolicy.txt       notes
  170  mv -r SAMResources.zip                   notes
  171  mv -r dynamodb-get-item-command.txt notes
  172  mv -r CSA-S8-L2-Bootstrap.sh.txt           notes
  173  mv -r Version1.zip                       notes
  174  mv -r dynamodb-lab.sh notes
  175  mv -r CSA-S8-L2-diagram.pdf                notes
  176  mv -r Version2.zip                       notes
  177  mv -r eb-java-scorekeep-xray-gettingstarted-v1.3.zip notes
  178  mv -r CloudFormation                       notes
  179  mv -r WebServerScript.sh                 notes
  180  mv -r git notes
  181  mv -r CodeDeployCommands.txt               notes
  182  mv -r Website-files.zip                  notes
  183  mv -r index.html notes
  184  mv -r DynamoDB-Commands.txt                notes
  185  mv -r aws-csa-2019-RDS-lab-Diagram.pdf   notes
  186  mv -r items.json notes
  187  mv -r EFS                                  notes
  188  mv -r bootstrapscript.sh                 notes
  189  mv -r lambda notes
  190  mv -r Encrypt-Decrypt.txt                  notes
  191  mv -r cloudwatch                         notes
  192  mv -r mywebapp.zip notes
  193  mv -r Error-Connection-reset-by-peer.txt   notes
  194  mv -r code-build                         notes
  195  mv -r rdsbash.sh.zip notes
  196  mv -r Installing-Composer-PHP.txt          notes
  197  mv -r code-revisions.zip                 notes
  198  mv -r s3policy.json notes
  199  mv -r Lab-resources.zip                    notes
  200  mv -r csa-wordpress-bash.sh              notes
  201  mv -r serverless-website.zip notes
  202  mv -r Out-of-memory-error-workaround.txt notes
  203  ls
  204  ;s
  205  ls
  206  clear
  207  mv  AWS-CLI-Pagination-Commands.txt      notes
  208  mv  RDSBootStrap.sh                    notes
  209  mv  docker-singlecontainer-v1.zip notes
  210  mv  BootStrap-script.txt                 notes
  211  mv  docker-singlecontainer-v2.zip notes
  212  mv  CLoudFormationAccessPolicy.txt       notes
  213  mv  SAMResources.zip                   notes
  214  mv  dynamodb-get-item-command.txt notes
  215  mv  CSA-S8-L2-Bootstrap.sh.txt           notes
  216  mv  Version1.zip                       notes
  217  mv  dynamodb-lab.sh notes
  218  mv  CSA-S8-L2-diagram.pdf                notes
  219  mv  Version2.zip                       notes
  220  mv  eb-java-scorekeep-xray-gettingstarted-v1.3.zip notes
  221  mv  CloudFormation                       notes
  222  mv  WebServerScript.sh                 notes
  223  mv  git notes
  224  mv  CodeDeployCommands.txt               notes
  225  mv  Website-files.zip                  notes
  226  mv  index.html notes
  227  mv  DynamoDB-Commands.txt                notes
  228  mv  aws-csa-2019-RDS-lab-Diagram.pdf   notes
  229  mv  items.json notes
  230  mv  EFS                                  notes
  231  mv  bootstrapscript.sh                 notes
  232  mv  lambda notes
  233  mv  Encrypt-Decrypt.txt                  notes
  234  mv  cloudwatch                         notes
  235  mv  mywebapp.zip notes
  236  mv  Error-Connectioneset-by-peer.txt   notes
  237  mv  code-build                         notes
  238  mv  rdsbash.sh.zip notes
  239  mv  Installing-Composer-PHP.txt          notes
  240  mv  codeevisions.zip                 notes
  241  mv  s3policy.json notes
  242  mv  Labesources.zip                    notes
  243  mv  csa-wordpress-bash.sh              notes
  244  mv  serverless-website.zip notes
  245  mv  Out-of-memory-error-workaround.txt notes
  246  ls
  247  mv Error-Connection-reset-by-peer.txt notes/
  248  mv Lab-resources.zip notes/
  249  ks
  250  clear
  251  ls
  252  mv code-revisions.zip notes/
  253  ls
  254  ls devops/
  255  clear
  256  ls
  257  pwd
  258  clear
  259  ls
  260  ls notes/
  261  cd ../
  262  ls
  263  cd aws-pipeline/
  264  ls
  265  ls .git/
  266  cd ../
  267  ls
  268  clear
  269  cd aws-pipeline/
  270  mv ../devops-pipeline/aws/ .
  271  ls
  272  cd ../devops-pipeline/
  273  ls
  274  git status
  275  ls
  276  git add .
  277  git status
  278  git pull
  279  git status
  280  ls docker/
  281  ls
  282  git add .
  283  git status
  284  git commit -m "restructure aws docs"
  285   git config --global user.email "shathi.ece@gmail.com"
  286  git config --global user.name "Sathiyarajan"
  287  git commit -m "restructure aws docs"
  288  git push origin master
  289  git push origin main
  290  ls
  291  ls docker/
  292  ls
  293  git status
  294  git add .
  295  git rm  aws/README.md
  296  git rm  aws/dummyfile.txt
  297  git add .
  298  git status
  299  ls ../aws-pipeline/
  300  ls ../aws-pipeline/aws/
  301  git status
  302  git commit -m "restructure the aws docs to another repo"
  303  git push origin main
  304  ls
  305  clear
  306  ls
  307  rm module1/
  308  rmdit module1/
  309  rmdir module1/
  310  rm -rf module1/
  311  ls
  312  rm test.txt
  313  ls
  314  rm -rf sathya*
  315  ks
  316  ls
  317  clear
  318  ls
  319  git status
  320  mkdir maven
  321  mv dependency-reduced-pom.xml maven/
  322  mvn
  323  mv pom.xml maven/
  324  ls
  325  clear
  326  ls
  327  mv src/ maven/
  328  ls
  329  mv target/ maven/
  330  ls maven/
  331  yum install maven
  332  mvn
  333  mvn --version
  334  cd maven/
  335  ls
  336  mvn clean install
  337  ls
  338  cd ../
  339  ls
  340  cd ../aws-pipeline/
  341  ls
  342  git status
  343  git add .
  344  git status
  345  git commit -m "restructure AWS notes"
  346  git push origin main
  347  git push origin master
  348  ls
  349  cd ../devops-pipeline/vagrant/
  350  ls
  351  history | grep ansbile
  352  history | grep ansible
  353  exit
  354  kubectl apply -f https://k8s.io/examples/application/guestbook/mongo-deployment.yaml
  355  kubectl get pods
  356  kubectl logs -f deployment/mongo
  357  kubectl get pods
  358  kubectl logs -f deployment/mongo
  359  kubectl apply -f https://k8s.io/examples/application/guestbook/mongo-service.yaml
  360  kubectl get service
  361  kubectl apply -f https://k8s.io/examples/application/guestbook/frontend-deployment.yaml
  362  kubectl get service
  363  kubectl get pods
  364  kubectl get pods -l app.kubernetes.io/name=guestbook -l app.kubernetes.io/component=frontend
  365  kubectl apply -f https://k8s.io/examples/application/guestbook/frontend-service.yaml
  366  kubectl get services
  367  kubectl port-forward svc/frontend 8080:80
  368  ls
  369  cd devops-pipeline/
  370  ls
  371  pwd
  372  ls ../
  373  ls
  374  cd docker/
  375  ls
  376  clear
  377  ls
  378  cd docker-images/
  379  ls
  380  exit
  381  kubectl get service frontend
  382  kubectl get service hello-kubernetes
  383  kubectl get nodes
  384  curl http://localhost:10249/proxyMode
  385  iptables
  386  kubectl get deployments
  387  kubectl get rc
  388  ls
  389  cd devops-pipeline/
  390  ls
  391  cd kubernetes/kubernetes-java-sample/
  392  ls
  393  ls ../
  394  cd k
  395  ls
  396  ls images/
  397  ls
  398  kubectl create -f wildfly-rc.yaml
  399  kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}')
  400  docker images
  401  kubeadm init --apiserver-advertise-address $(hostname -i)
  402  ifconfig
  403  kubectl apply -n kube-system -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
  404  kubectl get nodes
  405  kubectl get pod
  406  curl 127.0.0.1:8080
  407  curl 127.0.0.1:80
  408  ls
  409  cd ../
  410  ls
  411  cd ../
  412  ls
  413  cd ../
  414  ls
  415  git clone https://github.com/FairwindsOps/k8s-workshop.git
  416  cd k8s-wor
  417  ls
  418  cd k8s-workshop/
  419  ls
  420  ls complete/
  421  cd complete/
  422  ls
  423  kubectl apply -f namespace.yml
  424  kubectl get namespaces
  425  ls -1 01_redis/
  426  clear
  427  kubectl apply -f 01_redis/
  428  kubectl -n k8s-workshop get pod
  429  kubectl -n k8s-workshop get deployments
  430  kubectl -n k8s-workshop get services
  431  kubectl -n k8s-workshop get deployments,pods,services
  432  ls
  433  ls -l 02_webapp/
  434  ls
  435  kubectl apply -f 02_webapp/
  436  kubectl -n k8s-workshop get configmaps
  437  kubectl delete -f 02_webapp/
  438  ls
  439  kubectl apply -f 02_webapp/ --namespace k8s-workshop
  440  kubectl get services --namespace k8s-workshop
  441  kubectl -n k8s-workshop get services
  442  ls
  443  cd 01_redis/
  444  ls
  445  vim redis-primary.deployment.yml
  446  ls
  447  kubectl patch svc
  448  kubectl get svc
  449  kubectl get svc webapp
  450  kubectl -n k8s-workshop get pods
  451  kubectl -n k8s-workshop logs webapp-7f5b775497-cpqjv
  452  kubectl -n k8s-workshop logs -f webapp-7f5b775497-cpqjv
  453  kubectl -n k8s-workshop get services
  454  kubectl patch svc webapp -n k8s-workshop -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.218"]}}'
  455  kubectl -n k8s-workshop get services
  456  kubectl patch svc redis-primary -n k8s-workshop -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.219"]}}'
  457  kubectl -n k8s-workshop get services
  458  kubectl patch svc redis-replica -n k8s-workshop -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.220"]}}'
  459  kubectl -n k8s-workshop get services
  460  curl 172.31.71.218:80
  461  curl https://172.31.71.218:80
  462  curl https://172.31.71.218:31993
  463  curl http://172.31.71.218:31993
  464  curl http://172.31.71.218:80
  465  curl http://10.97.189.36:80
  466  curl http://10.97.189.36:31993
  467  ls
  468  ls ../
  469  ls ../02_webapp/
  470  ls ../03_ingress/
  471  kubectl get svc
  472  kubectl -n k8s-workshop port-forward svc/webapp 8080:80
  473  kubectl get svc -o json
  474  nestat
  475  nestat -tupln
  476  netsat -tupln
  477  netstat -tupln
  478  netstat -tupln | grep 3306
  479  kubectl get pods
  480  kubectl get svc
  481  kubectl patch svc mysql -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.221"]}}'
  482  kubectl get svc
  483  kubectl patch svc mongo -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.222"]}}'
  484  kubectl get svc
  485  kubectl patch svc frontend -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.223"]}}'
  486  kubectl get svc
  487  kubectl patch svc hello-kubernetes -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.224"]}}'
  488  kubectl get svc
  489  kubectl patch svc hello-kubernetes-custom -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.225"]}}'
  490  kubectl get svc
  491  kubectl patch svc kubernetes -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.226"]}}'
  492  netstat -tupln | grep 3306
  493  netstat -tupln
  494  kubectl get svc
  495  kubectl get pod
  496  kubectl get pods
  497  kubectl get svc
  498  curl -i 172.31.71.223
  499  docker images
  500  docker run -it 86a3dddf4b22 npm start
  501  docker run -it --net=host 86a3dddf4b22 npm start
  502  ls
  503  kubectl get pods
  504  kubectl get rc
  505  kubectl delete rc wildfly-rc
  506  kubectl delete hello-kubernetes-custom-5bdd5fd984-rjg8x
  507  kubectl get pods --show-all
  508  kubectl get pods
  509  kubectl get deployments --all-namespaces
  510  kubectl delete deployments frontend
  511  kubectl delete deployments mongo
  512  kubectl delete deployments redis-primary
  513  kubectl get deployments --all-namespaces
  514  kubectl delete deployments redis-primary
  515  kubectl delete deployments webapp
  516  cd ../
  517  ls
  518  kubectl delete namespace k8s-workshop
  519  kubectl get deployments --all-namespaces
  520  netstat -tupln | grep 80
  521  ssh node2
  522  cd ../
  523  ls
  524  cd ../
  525  ls
  526  kubectl apply -f https://k8s.io/examples/service/load-balancer-example.yaml
  527  kubectl get deployments hello-world
  528  kubectl describe deployments hello-world
  529  kubectl get replicasets
  530  kubectl expose deployment hello-world --type=LoadBalancer --name=Ex-service
  531  kubectl get services Ex-service
  532  kubectl expose deployment hello-world --type=LoadBalancer --name=test-service
  533  kubectl get services test-service
  534  kubectl get pods --output=wide
  535  kubectl get pods -l name=hello-world --output=wide
  536  kubectl get pods --output=wide
  537  kubectl run hello-world --replicas=2 --labels="run=LoadBalancer" --image=gcr.io/google-samples/node-hello:1.0  --port=8080
  538  deployment.apps/hello-world created
  539  kubectl expose deployment hello-world --type=LoadBalancer --name=lb-service
  540  kubectl get services lb-service
  541  kubectl patch svc lb-service  -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.10.2.10"]}}'
  542  service/lb-service patchedubectl get services lb-service
  543  ubectl get services lb-service
  544  kubectl get services lb-service
  545  curl 172.10.2.10:8080
  546  netstat -tupln | grep 80
  547  netstat -tupln | grep 8080
  548  kubectl get pods --output=wide
  549  curl https://172.10.2.10:8080
  550  curl 172.10.2.10:8080
  551  curl http://172.10.2.10:8080
  552  curl http://node1:8080
  553  curl https://node1:8080
  554  curl 172.10.2.10:8080
  555  kubectl run hello-world --replicas=5 --labels="run=load-balancer-example" --image=gcr.io/google-samples/node-hello:1.0  --port=8080
  556  kubectl run hello-world1 --replicas=5 --labels="run=load-balancer-example" --image=gcr.io/google-samples/node-hello:1.0  --port=8080
  557  kubectl get deployments hello-world1
  558  kubectl get deployments hello-world
  559  docker images
  560  curl http://172.17.0.2:31245
  561  curl http://localhost:31245
  562  kubectl get pods
  563  kubectl get pods --wide
  564  kubectl get pods -- wide
  565  kubectl get pods --output=wide
  566  kubectl cluster-info
  567  curl https://0.0.0.0:8080
  568  kubectl run user-login --replicas=2 --labels="run=user-login" --image=kingslayerr/teamproject:version2  --port=5000
  569  kubectl expose deployment user-login --type=NodePort --name=user-login-service
  570  kubectl get svc
  571  kubectl expose deployment user-login --type=NodePort --name=user-login-service
  572  kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
  573  kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
  574  # On first install only
  575  kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
  576  kubectl get pods
  577  kubectl get svc
  578  kubectl get svc frontend
  579  kubectl get svc hello-kubernetes
  580  kubectl get svc kubernetes
  581  kubectl get svc lb-service
  582  kubectl get svc mysql
  583  kubectl get svc mongo
  584  kubectl get svc test-service
  585  ls
  586  docker ps | egrep kubelet
  587  docker ps
  588  docker container ps
  589  kubectl get pods
  590  kubectl logs hello-kubernetes-767d49787b-7bxcg
  591  curl -i http://hello-kubernetes-767d49787b-7bxcg:8080
  592  kubectl get jobs
  593  kubectl get replicationcontroller [replication-controller-name]
  594  kubectl get pods --field-selector=spec.nodeName=[server-name]
  595  kubectl get pods
  596  kubectl delete pods --all
  597  kubectl get pods
  598  kubectl get deployments
  599  kubectl delete deployments --all
  600  kubectl get deployments
  601  kubectl get pods
  602  kubectl run monkey --image=monkey --record
  603  kubectl get pods
  604  kubectl get pv
  605  kubectl get pvc
  606  kubectl get secrets
  607  kubectl proxy
  608  kubectl run sise --image=quay.io/openshiftlabs/simpleservice:0.5.0 --port=9876
  609  kubectl get pods
  610  kubectl exec sise -t -- curl -s localhost:9876/info
  611  kubectl get pods
  612  kubectl get pods --output=wide
  613  kubectl exec sise -t -- curl -s localhost:9876/info
  614  kubectl describe pod sise | grep IP:
  615  export K8S_API="https://$(kubectl config get-clusters | tail -n 1)"
  616  export API_TOKEN="$(kubectl config view -o jsonpath={.users[-1].user.token})"
  617  export NAMESPACE="default"
  618  export PODNAME="sise"
  619  curl -s -k -H"Authorization: Bearer $API_TOKEN" $K8S_API/api/v1/namespaces/$NAMESPACE/pods/$PODNAME/proxy/info
  620  curl -s localhost:9876/info
  621  kubectl config view
  622  kubectl api-resources
  623  exit
  624  kubectl get all --all-namespaces
  625  kubectl get daemonsets
  626  kubectl get deployment
  627  kubectl get ev
  628  history
  
## workshop with the results
  
Last login: Mon Mar 15 12:37:01 2021 from 192.168.120.1
[root@node1 ~]#
[root@node1 ~]# kubectl get service frontend
NAME       TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
frontend   ClusterIP   10.107.141.22   <none>        80/TCP    79s
[root@node1 ~]# kubectl get service frontend
NAME       TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
frontend   ClusterIP   10.107.141.22   <none>        80/TCP    88s
[root@node1 ~]# kubectl get service frontend
NAME       TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
frontend   ClusterIP   10.107.141.22   <none>        80/TCP    90s
[root@node1 ~]# kubectl get service hello-kubernetes
NAME               TYPE           CLUSTER-IP     EXTERNAL-IP   PORT(S)        AGE
hello-kubernetes   LoadBalancer   10.96.248.85   <pending>     80:32368/TCP   20h
[root@node1 ~]# kubectl get nodes
NAME    STATUS   ROLES                  AGE     VERSION
node1   Ready    control-plane,master   2d18h   v1.20.4
node2   Ready    control-plane,master   2d18h   v1.20.4
node3   Ready    <none>                 2d18h   v1.20.4
node4   Ready    <none>                 2d18h   v1.20.4
[root@node1 ~]# curl http://localhost:10249/proxyMode
iptables[root@node1 ~]# iptables
iptables v1.4.21: no command specified
Try `iptables -h' or 'iptables --help' for more information.
[root@node1 ~]# kubectl get deployments
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE
frontend                  3/3     3            3           8m14s
hello-kubernetes          3/3     3            3           20h
hello-kubernetes-custom   3/3     3            3           20h
mongo                     1/1     1            1           10m
[root@node1 ~]# kubectl get rc
No resources found in default namespace.
[root@node1 ~]# ls
anaconda-ks.cfg  devops-pipeline  examples          k8s-wordsmith-demo
aws-pipeline     docker-kafka     hello-kubernetes  original-ks.cfg
[root@node1 ~]# cd devops-pipeline/
[root@node1 devops-pipeline]# ls
Dockerfile  README.md  ansible  app  docker  jenkins  kubernetes  linux  maven  vagrant
[root@node1 devops-pipeline]# cd kubernetes/kubernetes-java-sample/
[root@node1 kubernetes-java-sample]# ls
LICENSE             lb-loadbalancer.yaml      service-discovery.yml
couchbase-rc.yaml   lb-nodeport.yaml          slides
dev-namespace.yaml  maven                     wildfly-pod-hc-http.yaml
images              prometheus-daemonset.yml  wildfly-pod.yaml
ingress.yaml        quota-wildfly.yaml        wildfly-rc.yaml
javaee7-hol.yaml    readme.adoc               wildfly-service.yaml
lb-clusterip.yaml   rolling-update            workshop.adoc
lb-external.yaml    runonce-job.yaml
[root@node1 kubernetes-java-sample]# ls ../
README.md  hello-kubernetes  kubernetes-java-sample
[root@node1 kubernetes-java-sample]# cd k
-bash: cd: k: No such file or directory
[root@node1 kubernetes-java-sample]# ls
LICENSE             lb-loadbalancer.yaml      service-discovery.yml
couchbase-rc.yaml   lb-nodeport.yaml          slides
dev-namespace.yaml  maven                     wildfly-pod-hc-http.yaml
images              prometheus-daemonset.yml  wildfly-pod.yaml
ingress.yaml        quota-wildfly.yaml        wildfly-rc.yaml
javaee7-hol.yaml    readme.adoc               wildfly-service.yaml
lb-clusterip.yaml   rolling-update            workshop.adoc
lb-external.yaml    runonce-job.yaml
[root@node1 kubernetes-java-sample]# ls images/
kubernetes-architecture.png
[root@node1 kubernetes-java-sample]# ls
LICENSE             lb-loadbalancer.yaml      service-discovery.yml
couchbase-rc.yaml   lb-nodeport.yaml          slides
dev-namespace.yaml  maven                     wildfly-pod-hc-http.yaml
images              prometheus-daemonset.yml  wildfly-pod.yaml
ingress.yaml        quota-wildfly.yaml        wildfly-rc.yaml
javaee7-hol.yaml    readme.adoc               wildfly-service.yaml
lb-clusterip.yaml   rolling-update            workshop.adoc
lb-external.yaml    runonce-job.yaml
[root@node1 kubernetes-java-sample]# kubectl create -f wildfly-rc.yaml
replicationcontroller/wildfly-rc created
[root@node1 kubernetes-java-sample]# kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}')
Name:         admin-user-token-jdnmz
Namespace:    kubernetes-dashboard
Labels:       <none>
Annotations:  kubernetes.io/service-account.name: admin-user
              kubernetes.io/service-account.uid: 96c8eee4-a260-4832-ab1a-ec0bf0f56d00

Type:  kubernetes.io/service-account-token

Data
====
ca.crt:     1066 bytes
namespace:  20 bytes
token:      eyJhbGciOiJSUzI1NiIsImtpZCI6Im5acVd6LWVXdlA1YW1KN09VcUxyUUttYjJHUDlVcUJlZVNxT2JuY0hNUDAifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlcm5ldGVzLWRhc2hib2FyZCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJhZG1pbi11c2VyLXRva2VuLWpkbm16Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQubmFtZSI6ImFkbWluLXVzZXIiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC51aWQiOiI5NmM4ZWVlNC1hMjYwLTQ4MzItYWIxYS1lYzBiZjBmNTZkMDAiLCJzdWIiOiJzeXN0ZW06c2VydmljZWFjY291bnQ6a3ViZXJuZXRlcy1kYXNoYm9hcmQ6YWRtaW4tdXNlciJ9.pDFG8ujPd8gMCd6S4KODsfxfMRMa2J0rkzWmLtC-IWbXHgu-Xdiks0jcGaqednTiUfJnPM_PhzdrKkcJ64HJhaOyCJTYuwMN4P8xaxwX2LrwVPbJetVzE5iFBlsp64BbDYaktVgUVcWN-r6AUojzL9kmHNHkd92M_mX5P0Q5XukszXNqvBnkFdQQewnXhrGw1MkJrCCzFRHFdgLpuDd6ZSdniS0ZUMvXnHIPH5EYOKz5j7Y3KGaGUS14euEtTL_k0uo6s8IcgxCiTC9KEgylmBHhrMerFnGi00Tql07Z3tKkfuxXAvA5Ml16oa7q1qAJByDcC8RTcJSUYyp1fyXrRQ
[root@node1 kubernetes-java-sample]# kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}')
Name:         admin-user-token-jdnmz
Namespace:    kubernetes-dashboard
Labels:       <none>
Annotations:  kubernetes.io/service-account.name: admin-user
              kubernetes.io/service-account.uid: 96c8eee4-a260-4832-ab1a-ec0bf0f56d00

Type:  kubernetes.io/service-account-token

Data
====
ca.crt:     1066 bytes
namespace:  20 bytes
token:      eyJhbGciOiJSUzI1NiIsImtpZCI6Im5acVd6LWVXdlA1YW1KN09VcUxyUUttYjJHUDlVcUJlZVNxT2JuY0hNUDAifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlcm5ldGVzLWRhc2hib2FyZCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJhZG1pbi11c2VyLXRva2VuLWpkbm16Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQubmFtZSI6ImFkbWluLXVzZXIiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC51aWQiOiI5NmM4ZWVlNC1hMjYwLTQ4MzItYWIxYS1lYzBiZjBmNTZkMDAiLCJzdWIiOiJzeXN0ZW06c2VydmljZWFjY291bnQ6a3ViZXJuZXRlcy1kYXNoYm9hcmQ6YWRtaW4tdXNlciJ9.pDFG8ujPd8gMCd6S4KODsfxfMRMa2J0rkzWmLtC-IWbXHgu-Xdiks0jcGaqednTiUfJnPM_PhzdrKkcJ64HJhaOyCJTYuwMN4P8xaxwX2LrwVPbJetVzE5iFBlsp64BbDYaktVgUVcWN-r6AUojzL9kmHNHkd92M_mX5P0Q5XukszXNqvBnkFdQQewnXhrGw1MkJrCCzFRHFdgLpuDd6ZSdniS0ZUMvXnHIPH5EYOKz5j7Y3KGaGUS14euEtTL_k0uo6s8IcgxCiTC9KEgylmBHhrMerFnGi00Tql07Z3tKkfuxXAvA5Ml16oa7q1qAJByDcC8RTcJSUYyp1fyXrRQ
[root@node1 kubernetes-java-sample]#
[root@node1 kubernetes-java-sample]# docker images
REPOSITORY                           TAG             IMAGE ID       CREATED         SIZE
hello-kubernetes                     1.9             86a3dddf4b22   21 hours ago    123MB
k8s.gcr.io/kube-proxy                v1.20.4         c29e6c583067   3 weeks ago     118MB
k8s.gcr.io/kube-controller-manager   v1.20.4         0a41a1414c53   3 weeks ago     116MB
k8s.gcr.io/kube-apiserver            v1.20.4         ae5eb22e4a9d   3 weeks ago     122MB
k8s.gcr.io/kube-scheduler            v1.20.4         5f8cb769bd73   3 weeks ago     47.3MBcloudnativelabs/kube-router          latest          1c170082c326   3 months ago    93.5MBk8s.gcr.io/coredns                   1.7.0           bfe3a36ebd25   9 months ago    45.2MBcalico/node                          v3.11.3         4f4edb11a2f4   9 months ago    261MB
calico/pod2daemon-flexvol            v3.11.3         8a7b52b94812   9 months ago    112MB
calico/cni                           v3.11.3         0f4b3848f931   9 months ago    222MB
k8s.gcr.io/pause                     3.2             80d28bedfe5d   13 months ago   683kB
node                                 13.6.0-alpine   2d8f48ba52b1   14 months ago   112MB
quay.io/coreos/etcd                  v3.3.18         f4fe69798c9e   15 months ago   45.9MBhaproxy                              1.9.8           cccda2015ff6   20 months ago   89.7MBquay.io/coreos/flannel               v0.11.0         ff281650a721   2 years ago     52.6MB[root@node1 kubernetes-java-sample]# kubeadm init --apiserver-advertise-address $(hostname -i)
unable to select an IP from lo network interface
To see the stack trace of this error execute with --v=5 or higher
[root@node1 kubernetes-java-sample]# ifconfig
cali39f09f9e7fd: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::ecee:eeff:feee:eeee  prefixlen 64  scopeid 0x20<link>
        ether ee:ee:ee:ee:ee:ee  txqueuelen 0  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 8  bytes 656 (656.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

cali576fe657d83: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::ecee:eeff:feee:eeee  prefixlen 64  scopeid 0x20<link>
        ether ee:ee:ee:ee:ee:ee  txqueuelen 0  (Ethernet)
        RX packets 323002  bytes 101424292 (96.7 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 425267  bytes 88885535 (84.7 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

docker0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        inet 172.17.0.1  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 02:42:f2:d9:ab:d3  txqueuelen 0  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fe80::5054:ff:fe4d:77d3  prefixlen 64  scopeid 0x20<link>
        ether 52:54:00:4d:77:d3  txqueuelen 1000  (Ethernet)
        RX packets 186925  bytes 212783149 (202.9 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 65037  bytes 102456424 (97.7 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

eth1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.120.11  netmask 255.255.255.0  broadcast 192.168.120.255
        inet6 fe80::a00:27ff:fe66:8070  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:66:80:70  txqueuelen 1000  (Ethernet)
        RX packets 323002  bytes 101424292 (96.7 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 425267  bytes 88885535 (84.7 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

flannel.1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1450
        inet 10.244.0.0  netmask 255.255.255.255  broadcast 0.0.0.0
        inet6 fe80::2cec:a6ff:fe4f:6a55  prefixlen 64  scopeid 0x20<link>
        ether 2e:ec:a6:4f:6a:55  txqueuelen 0  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 8 overruns 0  carrier 0  collisions 0

kube-bridge: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1480
        inet6 fe80::5421:26ff:fead:2f84  prefixlen 64  scopeid 0x20<link>
        ether 56:21:26:ad:2f:84  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 8  bytes 656 (656.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 681723  bytes 153336970 (146.2 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 681723  bytes 153336970 (146.2 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

[root@node1 kubernetes-java-sample]#
[root@node1 kubernetes-java-sample]# kubectl apply -n kube-system -f \
> "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"serviceaccount/weave-net created
clusterrole.rbac.authorization.k8s.io/weave-net created
clusterrolebinding.rbac.authorization.k8s.io/weave-net created
role.rbac.authorization.k8s.io/weave-net created
rolebinding.rbac.authorization.k8s.io/weave-net created
daemonset.apps/weave-net created
[root@node1 kubernetes-java-sample]# kubectl get nodes
NAME    STATUS   ROLES                  AGE     VERSION
node1   Ready    control-plane,master   2d19h   v1.20.4
node2   Ready    control-plane,master   2d19h   v1.20.4
node3   Ready    <none>                 2d19h   v1.20.4
node4   Ready    <none>                 2d19h   v1.20.4
[root@node1 kubernetes-java-sample]# kubectl get pod
NAME                                       READY   STATUS    RESTARTS   AGE
frontend-848d88c7c-cw5l7                   1/1     Running   0          41m
frontend-848d88c7c-rfvct                   1/1     Running   0          41m
frontend-848d88c7c-rjg67                   1/1     Running   0          41m
hello-kubernetes-767d49787b-7bxcg          1/1     Running   2          20h
hello-kubernetes-767d49787b-k5lp9          1/1     Running   1          10h
hello-kubernetes-767d49787b-t54q9          1/1     Running   2          21h
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running   1          10h
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running   1          10h
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running   2          21h
mongo-75f59d57f4-f9wkc                     1/1     Running   0          43m
wildfly                                    1/1     Running   2          20h
wildfly-rc-mw8jh                           1/1     Running   0          11m
wildfly-rc-qqtdh                           1/1     Running   0          11m
[root@node1 kubernetes-java-sample]# curl 127.0.0.1:8080
curl: (7) Failed connect to 127.0.0.1:8080; Connection refused
[root@node1 kubernetes-java-sample]# curl 127.0.0.1:80
curl: (7) Failed connect to 127.0.0.1:80; Connection refused
[root@node1 kubernetes-java-sample]#
[root@node1 kubernetes-java-sample]# ls
LICENSE             lb-loadbalancer.yaml      service-discovery.yml
couchbase-rc.yaml   lb-nodeport.yaml          slides
dev-namespace.yaml  maven                     wildfly-pod-hc-http.yaml
images              prometheus-daemonset.yml  wildfly-pod.yaml
ingress.yaml        quota-wildfly.yaml        wildfly-rc.yaml
javaee7-hol.yaml    readme.adoc               wildfly-service.yaml
lb-clusterip.yaml   rolling-update            workshop.adoc
lb-external.yaml    runonce-job.yaml
[root@node1 kubernetes-java-sample]# cd ../
[root@node1 kubernetes]# ls
README.md  hello-kubernetes  kubernetes-java-sample
[root@node1 kubernetes]# cd ../
[root@node1 devops-pipeline]# ls
Dockerfile  README.md  ansible  app  docker  jenkins  kubernetes  linux  maven  vagrant
[root@node1 devops-pipeline]# cd ../
[root@node1 ~]# ls
anaconda-ks.cfg  devops-pipeline  examples          k8s-wordsmith-demo
aws-pipeline     docker-kafka     hello-kubernetes  original-ks.cfg
[root@node1 ~]# git clone https://github.com/FairwindsOps/k8s-workshop.git
Cloning into 'k8s-workshop'...
remote: Enumerating objects: 12, done.
remote: Counting objects: 100% (12/12), done.
remote: Compressing objects: 100% (8/8), done.
remote: Total 902 (delta 4), reused 7 (delta 3), pack-reused 890
Receiving objects: 100% (902/902), 1.45 MiB | 2.10 MiB/s, done.
Resolving deltas: 100% (514/514), done.
[root@node1 ~]# cd k8s-wor
-bash: cd: k8s-wor: No such file or directory
[root@node1 ~]# ls
anaconda-ks.cfg  devops-pipeline  examples          k8s-wordsmith-demo  original-ks.cfg
aws-pipeline     docker-kafka     hello-kubernetes  k8s-workshop
[root@node1 ~]# cd k8s-workshop/
[root@node1 k8s-workshop]# ls
README.md  aks  assembly_required  complete  eks  images  istio
[root@node1 k8s-workshop]# ls complete/
01_redis   03_ingress  default.networkpolicy.yml  load.sh
02_webapp  README.md   load.js                    namespace.yml
[root@node1 k8s-workshop]# cd complete/
[root@node1 complete]# ls
01_redis   03_ingress  default.networkpolicy.yml  load.sh
02_webapp  README.md   load.js                    namespace.yml
[root@node1 complete]# kubectl apply -f namespace.yml
namespace/k8s-workshop created
[root@node1 complete]# kubectl get namespaces
NAME                   STATUS   AGE
default                Active   2d19h
k8s-workshop           Active   34s
kube-node-lease        Active   2d19h
kube-public            Active   2d19h
kube-system            Active   2d19h
kubernetes-dashboard   Active   2d19h
[root@node1 complete]# ls -1 01_redis/
redis-primary.deployment.yml
redis-primary.service.yml
redis-replica.deployment.yml
redis-replica.horizontal_pod_autoscaler.yml
redis-replica.service.yml
redis.networkpolicy.yml
[root@node1 complete]# clear
[root@node1 complete]# kubectl apply -f 01_redis/
deployment.apps/redis-primary created
service/redis-primary created
deployment.apps/redis-replica created
horizontalpodautoscaler.autoscaling/redis-replica created
service/redis-replica created
networkpolicy.networking.k8s.io/redis created
[root@node1 complete]#
[root@node1 complete]# kubectl -n k8s-workshop get pod
NAME                             READY   STATUS              RESTARTS   AGE
redis-primary-7dd6f897fb-5htv6   0/1     ContainerCreating   0          27s
redis-replica-7fd8cb5945-6t6np   0/1     ContainerCreating   0          27s
[root@node1 complete]#
[root@node1 complete]# kubectl -n k8s-workshop get deployments
NAME            READY   UP-TO-DATE   AVAILABLE   AGE
redis-primary   0/1     1            0           38s
redis-replica   0/1     1            0           38s
[root@node1 complete]#
[root@node1 complete]# kubectl -n k8s-workshop get services
NAME            TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)    AGE
redis-primary   ClusterIP   10.98.41.29      <none>        6379/TCP   49s
redis-replica   ClusterIP   10.103.181.101   <none>        6379/TCP   49s
[root@node1 complete]#
[root@node1 complete]# kubectl -n k8s-workshop get deployments,pods,services
NAME                            READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/redis-primary   0/1     1            0           57s
deployment.apps/redis-replica   0/1     1            0           57s

NAME                                 READY   STATUS              RESTARTS   AGE
pod/redis-primary-7dd6f897fb-5htv6   0/1     ContainerCreating   0          57s
pod/redis-replica-7fd8cb5945-6t6np   0/1     ContainerCreating   0          57s

NAME                    TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)    AGE
service/redis-primary   ClusterIP   10.98.41.29      <none>        6379/TCP   57s
service/redis-replica   ClusterIP   10.103.181.101   <none>        6379/TCP   57s
[root@node1 complete]#
[root@node1 complete]# ls
01_redis  02_webapp  03_ingress  README.md  default.networkpolicy.yml  load.js  load.sh  namespace.yml
[root@node1 complete]# ls -l 02_webapp/
total 24
-rw-r--r--. 1 root root  188 Mar 15 13:23 app.configmap.yml
-rw-r--r--. 1 root root 2080 Mar 15 13:23 app.deployment.yml
-rw-r--r--. 1 root root  266 Mar 15 13:23 app.horizontal_pod_autoscaler.yml
-rw-r--r--. 1 root root  292 Mar 15 13:23 app.networkpolicy.yml
-rw-r--r--. 1 root root  364 Mar 15 13:23 app.secret.yml
-rw-r--r--. 1 root root  249 Mar 15 13:23 app.service.yml
[root@node1 complete]#
[root@node1 complete]# ls
01_redis  02_webapp  03_ingress  README.md  default.networkpolicy.yml  load.js  load.sh  namespace.yml
[root@node1 complete]#
[root@node1 complete]# kubectl apply -f 02_webapp/
configmap/webapp created
deployment.apps/webapp created
horizontalpodautoscaler.autoscaling/webapp created
networkpolicy.networking.k8s.io/app created
secret/webapp created
service/webapp created
[root@node1 complete]# kubectl -n k8s-workshop get configmaps
NAME               DATA   AGE
kube-root-ca.crt   1      3m4s
webapp             2      26s
[root@node1 complete]# kubectl delete -f 02_webapp/
configmap "webapp" deleted
deployment.apps "webapp" deleted
horizontalpodautoscaler.autoscaling "webapp" deleted
networkpolicy.networking.k8s.io "app" deleted
secret "webapp" deleted
service "webapp" deleted
[root@node1 complete]# ls
01_redis  02_webapp  03_ingress  README.md  default.networkpolicy.yml  load.js  load.sh  namespace.yml
[root@node1 complete]#
[root@node1 complete]# kubectl apply -f 02_webapp/ --namespace k8s-workshop
configmap/webapp created
deployment.apps/webapp created
horizontalpodautoscaler.autoscaling/webapp created
networkpolicy.networking.k8s.io/app created
secret/webapp created
service/webapp created
[root@node1 complete]# kubectl get services --namespace k8s-workshop
NAME            TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
redis-primary   ClusterIP      10.98.41.29      <none>        6379/TCP       2m54s
redis-replica   ClusterIP      10.103.181.101   <none>        6379/TCP       2m54s
webapp          LoadBalancer   10.97.189.36     <pending>     80:31993/TCP   27s
[root@node1 complete]# kubectl -n k8s-workshop get services
NAME            TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
redis-primary   ClusterIP      10.98.41.29      <none>        6379/TCP       3m9s
redis-replica   ClusterIP      10.103.181.101   <none>        6379/TCP       3m9s
webapp          LoadBalancer   10.97.189.36     <pending>     80:31993/TCP   42s
[root@node1 complete]# ls
01_redis  02_webapp  03_ingress  README.md  default.networkpolicy.yml  load.js  load.sh  namespace.yml
[root@node1 complete]# cd 01_redis/
[root@node1 01_redis]# ls
redis-primary.deployment.yml  redis-replica.deployment.yml                 redis-replica.service.yml
redis-primary.service.yml     redis-replica.horizontal_pod_autoscaler.yml  redis.networkpolicy.yml
[root@node1 01_redis]# vim redis-primary.deployment.yml
[root@node1 01_redis]# ls
redis-primary.deployment.yml  redis-replica.deployment.yml                 redis-replica.service.yml
redis-primary.service.yml     redis-replica.horizontal_pod_autoscaler.yml  redis.networkpolicy.yml
[root@node1 01_redis]# kubectl patch svc
error: must specify --patch or --patch-file containing the contents of the patch
[root@node1 01_redis]# kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
frontend                  ClusterIP      10.107.141.22    <none>        80/TCP         50m
hello-kubernetes          LoadBalancer   10.96.248.85     <pending>     80:32368/TCP   21h
hello-kubernetes-custom   LoadBalancer   10.103.111.165   <pending>     80:30120/TCP   21h
kubernetes                ClusterIP      10.96.0.1        <none>        443/TCP        2d19h
mongo                     ClusterIP      10.104.201.97    <none>        27017/TCP      52m
mysql                     ClusterIP      10.108.144.77    <none>        3306/TCP       20h
[root@node1 01_redis]# kubectl get svc webapp
Error from server (NotFound): services "webapp" not found
[root@node1 01_redis]# kubectl -n k8s-workshop get pods
NAME                             READY   STATUS             RESTARTS   AGE
redis-primary-7dd6f897fb-5htv6   1/1     Running            0          6m15s
redis-replica-7fd8cb5945-6t6np   1/1     Running            0          6m15s
webapp-7f5b775497-cpqjv          0/1     CrashLoopBackOff   5          3m49s
[root@node1 01_redis]# kubectl -n k8s-workshop logs webapp-7f5b775497-cpqjv
[root@node1 01_redis]# kubectl -n k8s-workshop logs -f webapp-7f5b775497-cpqjv
[root@node1 01_redis]# kubectl -n k8s-workshop get services
NAME            TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
redis-primary   ClusterIP      10.98.41.29      <none>        6379/TCP       7m37s
redis-replica   ClusterIP      10.103.181.101   <none>        6379/TCP       7m37s
webapp          LoadBalancer   10.97.189.36     <pending>     80:31993/TCP   5m10s
[root@node1 01_redis]# kubectl patch svc webapp -n k8s-workshop -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.218"]}}'
service/webapp patched
[root@node1 01_redis]# kubectl -n k8s-workshop get services
NAME            TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)        AGE
redis-primary   ClusterIP      10.98.41.29      <none>          6379/TCP       8m15s
redis-replica   ClusterIP      10.103.181.101   <none>          6379/TCP       8m15s
webapp          LoadBalancer   10.97.189.36     172.31.71.218   80:31993/TCP   5m48s
[root@node1 01_redis]#
[root@node1 01_redis]# kubectl patch svc redis-primary -n k8s-workshop -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.219"]}}'
service/redis-primary patched
[root@node1 01_redis]# kubectl -n k8s-workshop get services
NAME            TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)          AGE
redis-primary   LoadBalancer   10.98.41.29      172.31.71.219   6379:31225/TCP   8m55s
redis-replica   ClusterIP      10.103.181.101   <none>          6379/TCP         8m55s
webapp          LoadBalancer   10.97.189.36     172.31.71.218   80:31993/TCP     6m28s
[root@node1 01_redis]# kubectl -n k8s-workshop get services
NAME            TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)          AGE
redis-primary   LoadBalancer   10.98.41.29      172.31.71.219   6379:31225/TCP   9m4s
redis-replica   ClusterIP      10.103.181.101   <none>          6379/TCP         9m4s
webapp          LoadBalancer   10.97.189.36     172.31.71.218   80:31993/TCP     6m37s
[root@node1 01_redis]#
[root@node1 01_redis]# kubectl patch svc redis-replica -n k8s-workshop -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.220"]}}'
service/redis-replica patched
[root@node1 01_redis]# kubectl -n k8s-workshop get services
NAME            TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)          AGE
redis-primary   LoadBalancer   10.98.41.29      172.31.71.219   6379:31225/TCP   9m34s
redis-replica   LoadBalancer   10.103.181.101   172.31.71.220   6379:32315/TCP   9m34s
webapp          LoadBalancer   10.97.189.36     172.31.71.218   80:31993/TCP     7m7s
[root@node1 01_redis]# curl 172.31.71.218:80
^C
[root@node1 01_redis]# curl https://172.31.71.218:80
^C
[root@node1 01_redis]# curl https://172.31.71.218:31993
^C
[root@node1 01_redis]# curl http://172.31.71.218:31993
^C
[root@node1 01_redis]# curl http://172.31.71.218:80
^C
[root@node1 01_redis]# curl http://10.97.189.36:80
curl: (7) Failed connect to 10.97.189.36:80; Connection refused
[root@node1 01_redis]# curl http://10.97.189.36:31993
^C
[root@node1 01_redis]# ls
redis-primary.deployment.yml  redis-replica.deployment.yml                 redis-replica.service.yml
redis-primary.service.yml     redis-replica.horizontal_pod_autoscaler.yml  redis.networkpolicy.yml
[root@node1 01_redis]# ls ../
01_redis  02_webapp  03_ingress  README.md  default.networkpolicy.yml  load.js  load.sh  namespace.yml
[root@node1 01_redis]# ls ../02_webapp/
app.configmap.yml  app.deployment.yml  app.horizontal_pod_autoscaler.yml  app.networkpolicy.yml  app.secret.yml  app.service.yml
[root@node1 01_redis]#
[root@node1 01_redis]# ls ../02_webapp/
app.configmap.yml  app.deployment.yml  app.horizontal_pod_autoscaler.yml  app.networkpolicy.yml  app.secret.yml  app.service.yml
[root@node1 01_redis]# ls ../03_ingress/
app.ingress-v1.18.yaml  app.ingress.yaml
[root@node1 01_redis]# kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
frontend                  ClusterIP      10.107.141.22    <none>        80/TCP         61m
hello-kubernetes          LoadBalancer   10.96.248.85     <pending>     80:32368/TCP   21h
hello-kubernetes-custom   LoadBalancer   10.103.111.165   <pending>     80:30120/TCP   21h
kubernetes                ClusterIP      10.96.0.1        <none>        443/TCP        2d19h
mongo                     ClusterIP      10.104.201.97    <none>        27017/TCP      63m
mysql                     ClusterIP      10.108.144.77    <none>        3306/TCP       21h
[root@node1 01_redis]# kubectl -n k8s-workshop port-forward svc/webapp 8080:80
Forwarding from 127.0.0.1:8080 -> 8080
Forwarding from [::1]:8080 -> 8080
E0315 13:47:42.178196    5733 portforward.go:233] lost connection to pod
[root@node1 01_redis]# kubectl get svc -o json
{
    "apiVersion": "v1",
    "items": [
        {
            "apiVersion": "v1",
            "kind": "Service",
            "metadata": {
                "annotations": {
                    "kubectl.kubernetes.io/last-applied-configuration": "{\"apiVersion\":\"v1\",\"kind\":\"Service\",\"metadata\":{\"annotations\":{},\"labels\":{\"app.kubernetes.io/component\":\"frontend\",\"app.kubernetes.io/name\":\"guestbook\"},\"name\":\"frontend\",\"namespace\":\"default\"},\"spec\":{\"ports\":[{\"port\":80}],\"selector\":{\"app.kubernetes.io/component\":\"frontend\",\"app.kubernetes.io/name\":\"guestbook\"}}}\n"
                },
                "creationTimestamp": "2021-03-15T12:40:47Z",
                "labels": {
                    "app.kubernetes.io/component": "frontend",
                    "app.kubernetes.io/name": "guestbook"
                },
                "managedFields": [
                    {
                        "apiVersion": "v1",
                        "fieldsType": "FieldsV1",
                        "fieldsV1": {
                            "f:metadata": {
                                "f:annotations": {
                                    ".": {},
                                    "f:kubectl.kubernetes.io/last-applied-configuration": {}
                                },
                                "f:labels": {
                                    ".": {},
                                    "f:app.kubernetes.io/component": {},
                                    "f:app.kubernetes.io/name": {}
                                }
                            },
                            "f:spec": {
                                "f:ports": {
                                    ".": {},
                                    "k:{\"port\":80,\"protocol\":\"TCP\"}": {
                                        ".": {},
                                        "f:port": {},
                                        "f:protocol": {},
                                        "f:targetPort": {}
                                    }
                                },
                                "f:selector": {
                                    ".": {},
                                    "f:app.kubernetes.io/component": {},
                                    "f:app.kubernetes.io/name": {}
                                },
                                "f:sessionAffinity": {},
                                "f:type": {}
                            }
                        },
                        "manager": "kubectl-client-side-apply",
                        "operation": "Update",
                        "time": "2021-03-15T12:40:47Z"
                    }
                ],
                "name": "frontend",
                "namespace": "default",
                "resourceVersion": "36984",
                "uid": "a74d6495-2be9-4381-b54a-121ed1c70113"
            },
            "spec": {
                "clusterIP": "10.107.141.22",
                "clusterIPs": [
                    "10.107.141.22"
                ],
                "ports": [
                    {
                        "port": 80,
                        "protocol": "TCP",
                        "targetPort": 80
                    }
                ],
                "selector": {
                    "app.kubernetes.io/component": "frontend",
                    "app.kubernetes.io/name": "guestbook"
                },
                "sessionAffinity": "None",
                "type": "ClusterIP"
            },
            "status": {
                "loadBalancer": {}
            }
        },
        {
            "apiVersion": "v1",
            "kind": "Service",
            "metadata": {
                "annotations": {
                    "kubectl.kubernetes.io/last-applied-configuration": "{\"apiVersion\":\"v1\",\"kind\":\"Service\",\"metadata\":{\"annotations\":{},\"name\":\"hello-kubernetes\",\"namespace\":\"default\"},\"spec\":{\"ports\":[{\"port\":80,\"targetPort\":8080}],\"selector\":{\"app\":\"hello-kubernetes\"},\"type\":\"LoadBalancer\"}}\n"
                },
                "creationTimestamp": "2021-03-14T16:04:42Z",
                "managedFields": [
                    {
                        "apiVersion": "v1",
                        "fieldsType": "FieldsV1",
                        "fieldsV1": {
                            "f:metadata": {
                                "f:annotations": {
                                    ".": {},
                                    "f:kubectl.kubernetes.io/last-applied-configuration": {}
                                }
                            },
                            "f:spec": {
                                "f:externalTrafficPolicy": {},
                                "f:ports": {
                                    ".": {},
                                    "k:{\"port\":80,\"protocol\":\"TCP\"}": {
                                        ".": {},
                                        "f:port": {},
                                        "f:protocol": {},
                                        "f:targetPort": {}
                                    }
                                },
                                "f:selector": {
                                    ".": {},
                                    "f:app": {}
                                },
                                "f:sessionAffinity": {},
                                "f:type": {}
                            }
                        },
                        "manager": "kubectl-client-side-apply",
                        "operation": "Update",
                        "time": "2021-03-14T16:04:42Z"
                    }
                ],
                "name": "hello-kubernetes",
                "namespace": "default",
                "resourceVersion": "8867",
                "uid": "0a6b1310-50cf-4508-abc6-79bc1f5c15d7"
            },
            "spec": {
                "clusterIP": "10.96.248.85",
                "clusterIPs": [
                    "10.96.248.85"
                ],
                "externalTrafficPolicy": "Cluster",
                "ports": [
                    {
                        "nodePort": 32368,
                        "port": 80,
                        "protocol": "TCP",
                        "targetPort": 8080
                    }
                ],
                "selector": {
                    "app": "hello-kubernetes"
                },
                "sessionAffinity": "None",
                "type": "LoadBalancer"
            },
            "status": {
                "loadBalancer": {}
            }
        },
        {
            "apiVersion": "v1",
            "kind": "Service",
            "metadata": {
                "annotations": {
                    "kubectl.kubernetes.io/last-applied-configuration": "{\"apiVersion\":\"v1\",\"kind\":\"Service\",\"metadata\":{\"annotations\":{},\"name\":\"hello-kubernetes-custom\",\"namespace\":\"default\"},\"spec\":{\"ports\":[{\"port\":80,\"targetPort\":8080}],\"selector\":{\"app\":\"hello-kubernetes-custom\"},\"type\":\"LoadBalancer\"}}\n"
                },
                "creationTimestamp": "2021-03-14T16:05:27Z",
                "managedFields": [
                    {
                        "apiVersion": "v1",
                        "fieldsType": "FieldsV1",
                        "fieldsV1": {
                            "f:metadata": {
                                "f:annotations": {
                                    ".": {},
                                    "f:kubectl.kubernetes.io/last-applied-configuration": {}
                                }
                            },
                            "f:spec": {
                                "f:externalTrafficPolicy": {},
                                "f:ports": {
                                    ".": {},
                                    "k:{\"port\":80,\"protocol\":\"TCP\"}": {
                                        ".": {},
                                        "f:port": {},
                                        "f:protocol": {},
                                        "f:targetPort": {}
                                    }
                                },
                                "f:selector": {
                                    ".": {},
                                    "f:app": {}
                                },
                                "f:sessionAffinity": {},
                                "f:type": {}
                            }
                        },
                        "manager": "kubectl-client-side-apply",
                        "operation": "Update",
                        "time": "2021-03-14T16:05:27Z"
                    }
                ],
                "name": "hello-kubernetes-custom",
                "namespace": "default",
                "resourceVersion": "9003",
                "uid": "6aacd4f0-cfe0-4ca3-895c-a18606bcc139"
            },
            "spec": {
                "clusterIP": "10.103.111.165",
                "clusterIPs": [
                    "10.103.111.165"
                ],
                "externalTrafficPolicy": "Cluster",
                "ports": [
                    {
                        "nodePort": 30120,
                        "port": 80,
                        "protocol": "TCP",
                        "targetPort": 8080
                    }
                ],
                "selector": {
                    "app": "hello-kubernetes-custom"
                },
                "sessionAffinity": "None",
                "type": "LoadBalancer"
            },
            "status": {
                "loadBalancer": {}
            }
        },
        {
            "apiVersion": "v1",
            "kind": "Service",
            "metadata": {
                "creationTimestamp": "2021-03-12T18:03:22Z",
                "labels": {
                    "component": "apiserver",
                    "provider": "kubernetes"
                },
                "managedFields": [
                    {
                        "apiVersion": "v1",
                        "fieldsType": "FieldsV1",
                        "fieldsV1": {
                            "f:metadata": {
                                "f:labels": {
                                    ".": {},
                                    "f:component": {},
                                    "f:provider": {}
                                }
                            },
                            "f:spec": {
                                "f:clusterIP": {},
                                "f:ipFamilyPolicy": {},
                                "f:ports": {
                                    ".": {},
                                    "k:{\"port\":443,\"protocol\":\"TCP\"}": {
                                        ".": {},
                                        "f:name": {},
                                        "f:port": {},
                                        "f:protocol": {},
                                        "f:targetPort": {}
                                    }
                                },
                                "f:sessionAffinity": {},
                                "f:type": {}
                            }
                        },
                        "manager": "kube-apiserver",
                        "operation": "Update",
                        "time": "2021-03-12T18:03:22Z"
                    }
                ],
                "name": "kubernetes",
                "namespace": "default",
                "resourceVersion": "198",
                "uid": "0c08eb19-ab7c-4bf9-8bd8-d78dc437fb48"
            },
            "spec": {
                "clusterIP": "10.96.0.1",
                "clusterIPs": [
                    "10.96.0.1"
                ],
                "ports": [
                    {
                        "name": "https",
                        "port": 443,
                        "protocol": "TCP",
                        "targetPort": 6443
                    }
                ],
                "sessionAffinity": "None",
                "type": "ClusterIP"
            },
            "status": {
                "loadBalancer": {}
            }
        },
        {
            "apiVersion": "v1",
            "kind": "Service",
            "metadata": {
                "annotations": {
                    "kubectl.kubernetes.io/last-applied-configuration": "{\"apiVersion\":\"v1\",\"kind\":\"Service\",\"metadata\":{\"annotations\":{},\"labels\":{\"app.kubernetes.io/component\":\"backend\",\"app.kubernetes.io/name\":\"mongo\"},\"name\":\"mongo\",\"namespace\":\"default\"},\"spec\":{\"ports\":[{\"port\":27017,\"targetPort\":27017}],\"selector\":{\"app.kubernetes.io/component\":\"backend\",\"app.kubernetes.io/name\":\"mongo\"}}}\n"
                },
                "creationTimestamp": "2021-03-15T12:38:34Z",
                "labels": {
                    "app.kubernetes.io/component": "backend",
                    "app.kubernetes.io/name": "mongo"
                },
                "managedFields": [
                    {
                        "apiVersion": "v1",
                        "fieldsType": "FieldsV1",
                        "fieldsV1": {
                            "f:metadata": {
                                "f:annotations": {
                                    ".": {},
                                    "f:kubectl.kubernetes.io/last-applied-configuration": {}
                                },
                                "f:labels": {
                                    ".": {},
                                    "f:app.kubernetes.io/component": {},
                                    "f:app.kubernetes.io/name": {}
                                }
                            },
                            "f:spec": {
                                "f:ports": {
                                    ".": {},
                                    "k:{\"port\":27017,\"protocol\":\"TCP\"}": {
                                        ".": {},
                                        "f:port": {},
                                        "f:protocol": {},
                                        "f:targetPort": {}
                                    }
                                },
                                "f:selector": {
                                    ".": {},
                                    "f:app.kubernetes.io/component": {},
                                    "f:app.kubernetes.io/name": {}
                                },
                                "f:sessionAffinity": {},
                                "f:type": {}
                            }
                        },
                        "manager": "kubectl-client-side-apply",
                        "operation": "Update",
                        "time": "2021-03-15T12:38:34Z"
                    }
                ],
                "name": "mongo",
                "namespace": "default",
                "resourceVersion": "36719",
                "uid": "1f6db24e-5b33-49ee-b3ad-6cf69a80c639"
            },
            "spec": {
                "clusterIP": "10.104.201.97",
                "clusterIPs": [
                    "10.104.201.97"
                ],
                "ports": [
                    {
                        "port": 27017,
                        "protocol": "TCP",
                        "targetPort": 27017
                    }
                ],
                "selector": {
                    "app.kubernetes.io/component": "backend",
                    "app.kubernetes.io/name": "mongo"
                },
                "sessionAffinity": "None",
                "type": "ClusterIP"
            },
            "status": {
                "loadBalancer": {}
            }
        },
        {
            "apiVersion": "v1",
            "kind": "Service",
            "metadata": {
                "annotations": {
                    "kubectl.kubernetes.io/last-applied-configuration": "{\"apiVersion\":\"v1\",\"kind\":\"Service\",\"metadata\":{\"annotations\":{},\"name\":\"mysql\",\"namespace\":\"default\"},\"spec\":{\"ports\":[{\"port\":3306,\"protocol\":\"TCP\"}],\"selector\":{\"app\":\"mysql\"}}}\n"
                },
                "creationTimestamp": "2021-03-14T16:34:06Z",
                "managedFields": [
                    {
                        "apiVersion": "v1",
                        "fieldsType": "FieldsV1",
                        "fieldsV1": {
                            "f:metadata": {
                                "f:annotations": {
                                    ".": {},
                                    "f:kubectl.kubernetes.io/last-applied-configuration": {}
                                }
                            },
                            "f:spec": {
                                "f:ports": {
                                    ".": {},
                                    "k:{\"port\":3306,\"protocol\":\"TCP\"}": {
                                        ".": {},
                                        "f:port": {},
                                        "f:protocol": {},
                                        "f:targetPort": {}
                                    }
                                },
                                "f:selector": {
                                    ".": {},
                                    "f:app": {}
                                },
                                "f:sessionAffinity": {},
                                "f:type": {}
                            }
                        },
                        "manager": "kubectl-client-side-apply",
                        "operation": "Update",
                        "time": "2021-03-14T16:34:06Z"
                    }
                ],
                "name": "mysql",
                "namespace": "default",
                "resourceVersion": "11770",
                "uid": "e1276e84-0e8a-4b33-ae62-46c47b751826"
            },
            "spec": {
                "clusterIP": "10.108.144.77",
                "clusterIPs": [
                    "10.108.144.77"
                ],
                "ports": [
                    {
                        "port": 3306,
                        "protocol": "TCP",
                        "targetPort": 3306
                    }
                ],
                "selector": {
                    "app": "mysql"
                },
                "sessionAffinity": "None",
                "type": "ClusterIP"
            },
            "status": {
                "loadBalancer": {}
            }
        }
    ],
    "kind": "List",
    "metadata": {
        "resourceVersion": "",
        "selfLink": ""
    }
}
[root@node1 01_redis]# nestat
-bash: nestat: command not found
[root@node1 01_redis]# nestat -tupln
-bash: nestat: command not found
[root@node1 01_redis]# netsat -tupln
-bash: netsat: command not found
[root@node1 01_redis]# netstat -tupln
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 0.0.0.0:31225           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 0.0.0.0:31993           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 127.0.0.1:25            0.0.0.0:*               LISTEN      1057/master
tcp        0      0 0.0.0.0:32315           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 0.0.0.0:443             0.0.0.0:*               LISTEN      2466/haproxy
tcp        0      0 127.0.0.1:6784          0.0.0.0:*               LISTEN      23668/weaver
tcp        0      0 127.0.0.1:50051         0.0.0.0:*               LISTEN      6577/kube-router
tcp        0      0 192.168.120.11:50051    0.0.0.0:*               LISTEN      6577/kube-router
tcp        0      0 127.0.0.1:39047         0.0.0.0:*               LISTEN      832/kubelet
tcp        0      0 0.0.0.0:30120           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 127.0.0.1:10248         0.0.0.0:*               LISTEN      832/kubelet
tcp        0      0 127.0.0.1:10249         0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 127.0.0.1:9099          0.0.0.0:*               LISTEN      7233/calico-node
tcp        0      0 0.0.0.0:111             0.0.0.0:*               LISTEN      387/rpcbind
tcp        0      0 0.0.0.0:32368           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 127.0.0.1:10257         0.0.0.0:*               LISTEN      5694/kube-controlle
tcp        0      0 192.168.120.11:179      0.0.0.0:*               LISTEN      6577/kube-router
tcp        0      0 127.0.0.1:10259         0.0.0.0:*               LISTEN      5167/kube-scheduler
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      829/sshd
tcp6       0      0 ::1:25                  :::*                    LISTEN      1057/master
tcp6       0      0 :::6781                 :::*                    LISTEN      23392/weave-npc
tcp6       0      0 :::6782                 :::*                    LISTEN      23668/weaver
tcp6       0      0 :::6783                 :::*                    LISTEN      23668/weaver
tcp6       0      0 :::10250                :::*                    LISTEN      832/kubelet
tcp6       0      0 :::6443                 :::*                    LISTEN      5591/kube-apiserver
tcp6       0      0 :::111                  :::*                    LISTEN      387/rpcbind
tcp6       0      0 :::10256                :::*                    LISTEN      6642/kube-proxy
tcp6       0      0 ::1:179                 :::*                    LISTEN      6577/kube-router
tcp6       0      0 :::20244                :::*                    LISTEN      6577/kube-router
tcp6       0      0 :::22                   :::*                    LISTEN      829/sshd
udp        0      0 0.0.0.0:985             0.0.0.0:*                           387/rpcbind
udp        0      0 0.0.0.0:68              0.0.0.0:*                           2896/dhclient
udp        0      0 0.0.0.0:111             0.0.0.0:*                           387/rpcbind
udp        0      0 0.0.0.0:8472            0.0.0.0:*                           -
udp        0      0 127.0.0.1:323           0.0.0.0:*                           410/chronyd
udp        0      0 0.0.0.0:6783            0.0.0.0:*                           23668/weaver
udp        0      0 0.0.0.0:6784            0.0.0.0:*                           -
udp        0      0 0.0.0.0:47747           0.0.0.0:*                           2326/haproxy
udp6       0      0 :::985                  :::*                                387/rpcbind
udp6       0      0 :::111                  :::*                                387/rpcbind
udp6       0      0 ::1:323                 :::*                                410/chronyd
udp6       0      0 :::6784                 :::*                                -
[root@node1 01_redis]# netstat -tupln | grep 3306
[root@node1 01_redis]# kubectl get pods
NAME                                       READY   STATUS    RESTARTS   AGE
frontend-848d88c7c-cw5l7                   1/1     Running   0          69m
frontend-848d88c7c-rfvct                   1/1     Running   0          69m
frontend-848d88c7c-rjg67                   1/1     Running   0          69m
hello-kubernetes-767d49787b-7bxcg          1/1     Running   2          21h
hello-kubernetes-767d49787b-k5lp9          1/1     Running   1          10h
hello-kubernetes-767d49787b-t54q9          1/1     Running   2          21h
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running   1          10h
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running   1          10h
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running   2          21h
mongo-75f59d57f4-f9wkc                     1/1     Running   0          72m
wildfly                                    1/1     Running   2          21h
wildfly-rc-mw8jh                           1/1     Running   0          39m
wildfly-rc-qqtdh                           1/1     Running   0          39m
[root@node1 01_redis]# kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
frontend                  ClusterIP      10.107.141.22    <none>        80/TCP         68m
hello-kubernetes          LoadBalancer   10.96.248.85     <pending>     80:32368/TCP   21h
hello-kubernetes-custom   LoadBalancer   10.103.111.165   <pending>     80:30120/TCP   21h
kubernetes                ClusterIP      10.96.0.1        <none>        443/TCP        2d19h
mongo                     ClusterIP      10.104.201.97    <none>        27017/TCP      70m
mysql                     ClusterIP      10.108.144.77    <none>        3306/TCP       21h
[root@node1 01_redis]# kubectl patch svc mysql -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.221"]}}'
service/mysql patched
[root@node1 01_redis]# kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)          AGE
frontend                  ClusterIP      10.107.141.22    <none>          80/TCP           69m
hello-kubernetes          LoadBalancer   10.96.248.85     <pending>       80:32368/TCP     21h
hello-kubernetes-custom   LoadBalancer   10.103.111.165   <pending>       80:30120/TCP     21h
kubernetes                ClusterIP      10.96.0.1        <none>          443/TCP          2d19h
mongo                     ClusterIP      10.104.201.97    <none>          27017/TCP        71m
mysql                     LoadBalancer   10.108.144.77    172.31.71.221   3306:30154/TCP   21h
[root@node1 01_redis]# kubectl patch svc mongo -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.222"]}}'
service/mongo patched
[root@node1 01_redis]# kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)           AGE
frontend                  ClusterIP      10.107.141.22    <none>          80/TCP            69m
hello-kubernetes          LoadBalancer   10.96.248.85     <pending>       80:32368/TCP      21h
hello-kubernetes-custom   LoadBalancer   10.103.111.165   <pending>       80:30120/TCP      21h
kubernetes                ClusterIP      10.96.0.1        <none>          443/TCP           2d19h
mongo                     LoadBalancer   10.104.201.97    172.31.71.222   27017:31823/TCP   72m
mysql                     LoadBalancer   10.108.144.77    172.31.71.221   3306:30154/TCP    21h
[root@node1 01_redis]# kubectl patch svc frontend -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.223"]}}'
service/frontend patched
[root@node1 01_redis]# kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)           AGE
frontend                  LoadBalancer   10.107.141.22    172.31.71.223   80:30859/TCP      70m
hello-kubernetes          LoadBalancer   10.96.248.85     <pending>       80:32368/TCP      21h
hello-kubernetes-custom   LoadBalancer   10.103.111.165   <pending>       80:30120/TCP      21h
kubernetes                ClusterIP      10.96.0.1        <none>          443/TCP           2d19h
mongo                     LoadBalancer   10.104.201.97    172.31.71.222   27017:31823/TCP   72m
mysql                     LoadBalancer   10.108.144.77    172.31.71.221   3306:30154/TCP    21h
[root@node1 01_redis]#
[root@node1 01_redis]# kubectl patch svc hello-kubernetes -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.224"]}}'
service/hello-kubernetes patched
[root@node1 01_redis]# kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)           AGE
frontend                  LoadBalancer   10.107.141.22    172.31.71.223   80:30859/TCP      70m
hello-kubernetes          LoadBalancer   10.96.248.85     172.31.71.224   80:32368/TCP      21h
hello-kubernetes-custom   LoadBalancer   10.103.111.165   <pending>       80:30120/TCP      21h
kubernetes                ClusterIP      10.96.0.1        <none>          443/TCP           2d19h
mongo                     LoadBalancer   10.104.201.97    172.31.71.222   27017:31823/TCP   72m
mysql                     LoadBalancer   10.108.144.77    172.31.71.221   3306:30154/TCP    21h
[root@node1 01_redis]# kubectl patch svc hello-kubernetes-custom -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.225"]}}'
service/hello-kubernetes-custom patched
[root@node1 01_redis]# kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)           AGE
frontend                  LoadBalancer   10.107.141.22    172.31.71.223   80:30859/TCP      70m
hello-kubernetes          LoadBalancer   10.96.248.85     172.31.71.224   80:32368/TCP      21h
hello-kubernetes-custom   LoadBalancer   10.103.111.165   172.31.71.225   80:30120/TCP      21h
kubernetes                ClusterIP      10.96.0.1        <none>          443/TCP           2d19h
mongo                     LoadBalancer   10.104.201.97    172.31.71.222   27017:31823/TCP   73m
mysql                     LoadBalancer   10.108.144.77    172.31.71.221   3306:30154/TCP    21h
[root@node1 01_redis]#
[root@node1 01_redis]# kubectl patch svc kubernetes -n default -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.31.71.226"]}}'
service/kubernetes patched
[root@node1 01_redis]# netstat -tupln | grep 3306
[root@node1 01_redis]# netstat -tupln
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 0.0.0.0:31225           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 0.0.0.0:31993           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 127.0.0.1:25            0.0.0.0:*               LISTEN      1057/master
tcp        0      0 0.0.0.0:30011           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 0.0.0.0:32315           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 0.0.0.0:443             0.0.0.0:*               LISTEN      2466/haproxy
tcp        0      0 127.0.0.1:6784          0.0.0.0:*               LISTEN      23668/weaver
tcp        0      0 127.0.0.1:50051         0.0.0.0:*               LISTEN      6577/kube-router
tcp        0      0 192.168.120.11:50051    0.0.0.0:*               LISTEN      6577/kube-router
tcp        0      0 127.0.0.1:39047         0.0.0.0:*               LISTEN      832/kubelet
tcp        0      0 0.0.0.0:30120           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 127.0.0.1:10248         0.0.0.0:*               LISTEN      832/kubelet
tcp        0      0 127.0.0.1:10249         0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 0.0.0.0:30154           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 0.0.0.0:30859           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 127.0.0.1:9099          0.0.0.0:*               LISTEN      7233/calico-node
tcp        0      0 0.0.0.0:31823           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 0.0.0.0:111             0.0.0.0:*               LISTEN      387/rpcbind
tcp        0      0 0.0.0.0:32368           0.0.0.0:*               LISTEN      6642/kube-proxy
tcp        0      0 127.0.0.1:10257         0.0.0.0:*               LISTEN      5694/kube-controlle
tcp        0      0 192.168.120.11:179      0.0.0.0:*               LISTEN      6577/kube-router
tcp        0      0 127.0.0.1:10259         0.0.0.0:*               LISTEN      5167/kube-scheduler
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      829/sshd
tcp6       0      0 ::1:25                  :::*                    LISTEN      1057/master
tcp6       0      0 :::6781                 :::*                    LISTEN      23392/weave-npc
tcp6       0      0 :::6782                 :::*                    LISTEN      23668/weaver
tcp6       0      0 :::6783                 :::*                    LISTEN      23668/weaver
tcp6       0      0 :::10250                :::*                    LISTEN      832/kubelet
tcp6       0      0 :::6443                 :::*                    LISTEN      5591/kube-apiserver
tcp6       0      0 :::111                  :::*                    LISTEN      387/rpcbind
tcp6       0      0 :::10256                :::*                    LISTEN      6642/kube-proxy
tcp6       0      0 ::1:179                 :::*                    LISTEN      6577/kube-router
tcp6       0      0 :::20244                :::*                    LISTEN      6577/kube-router
tcp6       0      0 :::22                   :::*                    LISTEN      829/sshd
udp        0      0 0.0.0.0:985             0.0.0.0:*                           387/rpcbind
udp        0      0 0.0.0.0:68              0.0.0.0:*                           2896/dhclient
udp        0      0 0.0.0.0:111             0.0.0.0:*                           387/rpcbind
udp        0      0 0.0.0.0:8472            0.0.0.0:*                           -
udp        0      0 127.0.0.1:323           0.0.0.0:*                           410/chronyd
udp        0      0 0.0.0.0:6783            0.0.0.0:*                           23668/weaver
udp        0      0 0.0.0.0:6784            0.0.0.0:*                           -
udp        0      0 0.0.0.0:47747           0.0.0.0:*                           2326/haproxy
udp6       0      0 :::985                  :::*                                387/rpcbind
udp6       0      0 :::111                  :::*                                387/rpcbind
udp6       0      0 ::1:323                 :::*                                410/chronyd
udp6       0      0 :::6784                 :::*                                -
[root@node1 01_redis]# kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)           AGE
frontend                  LoadBalancer   10.107.141.22    172.31.71.223   80:30859/TCP      72m
hello-kubernetes          LoadBalancer   10.96.248.85     172.31.71.224   80:32368/TCP      21h
hello-kubernetes-custom   LoadBalancer   10.103.111.165   172.31.71.225   80:30120/TCP      21h
kubernetes                LoadBalancer   10.96.0.1        172.31.71.226   443:30011/TCP     2d19h
mongo                     LoadBalancer   10.104.201.97    172.31.71.222   27017:31823/TCP   74m
mysql                     LoadBalancer   10.108.144.77    172.31.71.221   3306:30154/TCP    21h
[root@node1 01_redis]# kubectl get pod
NAME                                       READY   STATUS    RESTARTS   AGE
frontend-848d88c7c-cw5l7                   1/1     Running   0          73m
frontend-848d88c7c-rfvct                   1/1     Running   0          73m
frontend-848d88c7c-rjg67                   1/1     Running   0          73m
hello-kubernetes-767d49787b-7bxcg          1/1     Running   2          21h
hello-kubernetes-767d49787b-k5lp9          1/1     Running   1          10h
hello-kubernetes-767d49787b-t54q9          1/1     Running   2          21h
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running   1          10h
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running   1          11h
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running   2          21h
mongo-75f59d57f4-f9wkc                     1/1     Running   0          75m
wildfly                                    1/1     Running   2          21h
wildfly-rc-mw8jh                           1/1     Running   0          43m
wildfly-rc-qqtdh                           1/1     Running   0          43m
[root@node1 01_redis]# kubectl get pods
NAME                                       READY   STATUS    RESTARTS   AGE
frontend-848d88c7c-cw5l7                   1/1     Running   0          73m
frontend-848d88c7c-rfvct                   1/1     Running   0          73m
frontend-848d88c7c-rjg67                   1/1     Running   0          73m
hello-kubernetes-767d49787b-7bxcg          1/1     Running   2          21h
hello-kubernetes-767d49787b-k5lp9          1/1     Running   1          10h
hello-kubernetes-767d49787b-t54q9          1/1     Running   2          21h
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running   1          10h
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running   1          11h
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running   2          21h
mongo-75f59d57f4-f9wkc                     1/1     Running   0          75m
wildfly                                    1/1     Running   2          21h
wildfly-rc-mw8jh                           1/1     Running   0          43m
wildfly-rc-qqtdh                           1/1     Running   0          43m
[root@node1 01_redis]# kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)           AGE
frontend                  LoadBalancer   10.107.141.22    172.31.71.223   80:30859/TCP      72m
hello-kubernetes          LoadBalancer   10.96.248.85     172.31.71.224   80:32368/TCP      21h
hello-kubernetes-custom   LoadBalancer   10.103.111.165   172.31.71.225   80:30120/TCP      21h
kubernetes                LoadBalancer   10.96.0.1        172.31.71.226   443:30011/TCP     2d19h
mongo                     LoadBalancer   10.104.201.97    172.31.71.222   27017:31823/TCP   74m
mysql                     LoadBalancer   10.108.144.77    172.31.71.221   3306:30154/TCP    21h
[root@node1 01_redis]# curl -i 172.31.71.223
^C
[root@node1 01_redis]# docker images
REPOSITORY                           TAG             IMAGE ID       CREATED         SIZE
hello-kubernetes                     1.9             86a3dddf4b22   22 hours ago    123MB
k8s.gcr.io/kube-proxy                v1.20.4         c29e6c583067   3 weeks ago     118MB
k8s.gcr.io/kube-apiserver            v1.20.4         ae5eb22e4a9d   3 weeks ago     122MB
k8s.gcr.io/kube-controller-manager   v1.20.4         0a41a1414c53   3 weeks ago     116MB
k8s.gcr.io/kube-scheduler            v1.20.4         5f8cb769bd73   3 weeks ago     47.3MB
weaveworks/weave-npc                 2.8.1           7f92d556d4ff   7 weeks ago     39.3MB
weaveworks/weave-kube                2.8.1           df29c0a4002c   7 weeks ago     89MB
cloudnativelabs/kube-router          latest          1c170082c326   3 months ago    93.5MB
k8s.gcr.io/coredns                   1.7.0           bfe3a36ebd25   9 months ago    45.2MB
calico/node                          v3.11.3         4f4edb11a2f4   9 months ago    261MB
calico/pod2daemon-flexvol            v3.11.3         8a7b52b94812   9 months ago    112MB
calico/cni                           v3.11.3         0f4b3848f931   9 months ago    222MB
k8s.gcr.io/pause                     3.2             80d28bedfe5d   13 months ago   683kB
node                                 13.6.0-alpine   2d8f48ba52b1   14 months ago   112MB
quay.io/coreos/etcd                  v3.3.18         f4fe69798c9e   15 months ago   45.9MB
haproxy                              1.9.8           cccda2015ff6   20 months ago   89.7MB
quay.io/coreos/flannel               v0.11.0         ff281650a721   2 years ago     52.6MB
[root@node1 01_redis]# docker run -it 86a3dddf4b22 npm start

> hello-kubernetes@1.9.0 start /usr/src/app
> node server.js

Listening on: http://fe2fa1eb0cf2:8080
^C[root@node1 01_redis]# docker run -it --net=host 86a3dddf4b22 npm start

> hello-kubernetes@1.9.0 start /usr/src/app
> node server.js

Listening on: http://node1:8080
::ffff:127.0.0.1 - - [15/Mar/2021:13:55:51 +0000] "GET / HTTP/1.1" 200 628 "-" "curl/7.29.0"
^C[root@node1 01_redis]#
[root@node1 01_redis]# ls
redis-primary.deployment.yml  redis-replica.deployment.yml                 redis-replica.service.yml
redis-primary.service.yml     redis-replica.horizontal_pod_autoscaler.yml  redis.networkpolicy.yml
[root@node1 01_redis]# kubectl get pods
NAME                                       READY   STATUS    RESTARTS   AGE
frontend-848d88c7c-cw5l7                   1/1     Running   0          4h21m
frontend-848d88c7c-rfvct                   1/1     Running   0          4h21m
frontend-848d88c7c-rjg67                   1/1     Running   0          4h21m
hello-kubernetes-767d49787b-7bxcg          1/1     Running   2          24h
hello-kubernetes-767d49787b-k5lp9          1/1     Running   1          14h
hello-kubernetes-767d49787b-t54q9          1/1     Running   2          24h
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running   2          24h
mongo-75f59d57f4-f9wkc                     1/1     Running   0          4h23m
wildfly                                    1/1     Running   2          24h
wildfly-rc-mw8jh                           1/1     Running   0          3h50m
wildfly-rc-qqtdh                           1/1     Running   0          3h50m
[root@node1 01_redis]# kubectl get rc
NAME         DESIRED   CURRENT   READY   AGE
wildfly-rc   2         2         2       3h50m
[root@node1 01_redis]# kubectl delete rc wildfly-rc
replicationcontroller "wildfly-rc" deleted
[root@node1 01_redis]# kubectl delete hello-kubernetes-custom-5bdd5fd984-rjg8x
error: the server doesn't have a resource type "hello-kubernetes-custom-5bdd5fd984-rjg8x"
[root@node1 01_redis]# kubectl get pods --show-all
Error: unknown flag: --show-all
See 'kubectl get --help' for usage.
[root@node1 01_redis]# kubectl get pods
NAME                                       READY   STATUS    RESTARTS   AGE
frontend-848d88c7c-cw5l7                   1/1     Running   0          4h22m
frontend-848d88c7c-rfvct                   1/1     Running   0          4h22m
frontend-848d88c7c-rjg67                   1/1     Running   0          4h22m
hello-kubernetes-767d49787b-7bxcg          1/1     Running   2          24h
hello-kubernetes-767d49787b-k5lp9          1/1     Running   1          14h
hello-kubernetes-767d49787b-t54q9          1/1     Running   2          24h
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running   2          24h
mongo-75f59d57f4-f9wkc                     1/1     Running   0          4h24m
wildfly                                    1/1     Running   2          24h
wildfly-rc-mw8jh                           1/1     Running   0          3h51m
wildfly-rc-qqtdh                           1/1     Running   0          3h51m
[root@node1 01_redis]# kubectl get deployments --all-namespaces
NAMESPACE              NAME                        READY   UP-TO-DATE   AVAILABLE   AGE
default                frontend                    3/3     3            3           4h22m
default                hello-kubernetes            3/3     3            3           24h
default                hello-kubernetes-custom     3/3     3            3           24h
default                mongo                       1/1     1            1           4h25m
k8s-workshop           redis-primary               1/1     1            1           3h36m
k8s-workshop           redis-replica               1/1     1            1           3h36m
k8s-workshop           webapp                      1/1     1            1           3h34m
kube-system            coredns                     2/2     2            2           2d22h
kubernetes-dashboard   dashboard-metrics-scraper   1/1     1            1           2d22h
kubernetes-dashboard   kubernetes-dashboard        1/1     1            1           2d22h
[root@node1 01_redis]# kubectl delete deployments frontend
deployment.apps "frontend" deleted
[root@node1 01_redis]# kubectl delete deployments mongo
deployment.apps "mongo" deleted
[root@node1 01_redis]# kubectl delete deployments redis-primary
Error from server (NotFound): deployments.apps "redis-primary" not found
[root@node1 01_redis]# kubectl get deployments --all-namespaces
NAMESPACE              NAME                        READY   UP-TO-DATE   AVAILABLE   AGE
default                hello-kubernetes            3/3     3            3           24h
default                hello-kubernetes-custom     3/3     3            3           24h
k8s-workshop           redis-primary               1/1     1            1           3h37m
k8s-workshop           redis-replica               1/1     1            1           3h37m
k8s-workshop           webapp                      1/1     1            1           3h35m
kube-system            coredns                     2/2     2            2           2d22h
kubernetes-dashboard   dashboard-metrics-scraper   1/1     1            1           2d22h
kubernetes-dashboard   kubernetes-dashboard        1/1     1            1           2d22h
[root@node1 01_redis]# kubectl delete deployments redis-primary
Error from server (NotFound): deployments.apps "redis-primary" not found
[root@node1 01_redis]# kubectl delete deployments webapp
Error from server (NotFound): deployments.apps "webapp" not found
[root@node1 01_redis]# cd ../
[root@node1 complete]# ls
01_redis  02_webapp  03_ingress  README.md  default.networkpolicy.yml  load.js  load.sh  namespace.yml
[root@node1 complete]# kubectl delete namespace k8s-workshop
namespace "k8s-workshop" deleted


^C
[root@node1 complete]# kubectl get deployments --all-namespaces
NAMESPACE              NAME                        READY   UP-TO-DATE   AVAILABLE   AGE
default                hello-kubernetes            3/3     3            3           24h
default                hello-kubernetes-custom     3/3     3            3           24h
kube-system            coredns                     2/2     2            2           2d22h
kubernetes-dashboard   dashboard-metrics-scraper   1/1     1            1           2d22h
kubernetes-dashboard   kubernetes-dashboard        1/1     1            1           2d22h
[root@node1 complete]# netstat -tupln | grep 80
[root@node1 complete]# ssh node2
ssh: Could not resolve hostname node2: Name or service not known
[root@node1 complete]# cd ../
[root@node1 k8s-workshop]# ls
README.md  aks  assembly_required  complete  eks  images  istio
[root@node1 k8s-workshop]# cd ../
[root@node1 ~]# ls
anaconda-ks.cfg  devops-pipeline  examples          k8s-wordsmith-demo  original-ks.cfg
aws-pipeline     docker-kafka     hello-kubernetes  k8s-workshop
[root@node1 ~]# kubectl apply -f https://k8s.io/examples/service/load-balancer-example.yaml
deployment.apps/hello-world created
[root@node1 ~]# kubectl get deployments hello-world
NAME          READY   UP-TO-DATE   AVAILABLE   AGE
hello-world   0/5     5            0           5s
[root@node1 ~]# kubectl describe deployments hello-world
Name:                   hello-world
Namespace:              default
CreationTimestamp:      Mon, 15 Mar 2021 17:04:38 +0000
Labels:                 app.kubernetes.io/name=load-balancer-example
Annotations:            deployment.kubernetes.io/revision: 1
Selector:               app.kubernetes.io/name=load-balancer-example
Replicas:               5 desired | 5 updated | 5 total | 0 available | 5 unavailable
StrategyType:           RollingUpdate
MinReadySeconds:        0
RollingUpdateStrategy:  25% max unavailable, 25% max surge
Pod Template:
  Labels:  app.kubernetes.io/name=load-balancer-example
  Containers:
   hello-world:
    Image:        gcr.io/google-samples/node-hello:1.0
    Port:         8080/TCP
    Host Port:    0/TCP
    Environment:  <none>
    Mounts:       <none>
  Volumes:        <none>
Conditions:
  Type           Status  Reason
  ----           ------  ------
  Available      False   MinimumReplicasUnavailable
  Progressing    True    ReplicaSetUpdated
OldReplicaSets:  <none>
NewReplicaSet:   hello-world-6df5659cb7 (5/5 replicas created)
Events:
  Type    Reason             Age   From                   Message
  ----    ------             ----  ----                   -------
  Normal  ScalingReplicaSet  11s   deployment-controller  Scaled up replica set hello-world-6df5659cb7 to 5
[root@node1 ~]# kubectl get replicasets
NAME                                 DESIRED   CURRENT   READY   AGE
frontend-848d88c7c                   3         3         3       4h25m
hello-kubernetes-767d49787b          3         3         3       25h
hello-kubernetes-custom-5bdd5fd984   3         3         3       24h
hello-world-6df5659cb7               5         5         0       18s
mongo-75f59d57f4                     1         1         1       4h27m
[root@node1 ~]# kubectl expose deployment hello-world --type=LoadBalancer --name=Ex-service
The Service "Ex-service" is invalid: metadata.name: Invalid value: "Ex-service": a DNS-1035 label must consist of lower case alphanumeric characters or '-', start with an alphabetic character, and end with an alphanumeric character (e.g. 'my-name',  or 'abc-123', regex used for validation is '[a-z]([-a-z0-9]*[a-z0-9])?')
[root@node1 ~]# kubectl get services Ex-service
Error from server (NotFound): services "Ex-service" not found
[root@node1 ~]# kubectl expose deployment hello-world --type=LoadBalancer --name=test-service
service/test-service exposed
[root@node1 ~]# kubectl get services test-service
NAME           TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
test-service   LoadBalancer   10.110.184.51   <pending>     8080:30811/TCP   6s
[root@node1 ~]# kubectl get pods --output=wide
NAME                                       READY   STATUS              RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
frontend-848d88c7c-cw5l7                   1/1     Running             0          4h26m   10.244.3.22   node4   <none>           <none>
frontend-848d88c7c-rfvct                   1/1     Running             0          4h26m   10.244.3.23   node4   <none>           <none>
frontend-848d88c7c-rjg67                   1/1     Running             0          4h26m   10.244.2.21   node3   <none>           <none>
hello-kubernetes-767d49787b-7bxcg          1/1     Running             2          24h     10.244.3.20   node4   <none>           <none>
hello-kubernetes-767d49787b-k5lp9          1/1     Running             1          14h     10.244.2.16   node3   <none>           <none>
hello-kubernetes-767d49787b-t54q9          1/1     Running             2          25h     10.244.3.17   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running             1          14h     10.244.3.19   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running             1          14h     10.244.3.18   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running             2          25h     10.244.2.17   node3   <none>           <none>
hello-world-6df5659cb7-9vch7               1/1     Running             0          103s    10.244.3.28   node4   <none>           <none>
hello-world-6df5659cb7-h4rgw               0/1     ContainerCreating   0          103s    <none>        node3   <none>           <none>
hello-world-6df5659cb7-h6w92               0/1     ContainerCreating   0          103s    <none>        node3   <none>           <none>
hello-world-6df5659cb7-st4xl               1/1     Running             0          103s    10.244.3.27   node4   <none>           <none>
hello-world-6df5659cb7-tzp28               1/1     Running             0          103s    10.244.3.29   node4   <none>           <none>
mongo-75f59d57f4-f9wkc                     1/1     Running             0          4h29m   10.244.3.21   node4   <none>           <none>
wildfly                                    1/1     Running             2          24h     10.244.2.18   node3   <none>           <none>
wildfly-rc-mw8jh                           1/1     Running             0          3h56m   10.244.2.23   node3   <none>           <none>
wildfly-rc-qqtdh                           1/1     Running             0          3h56m   10.244.2.22   node3   <none>           <none>
[root@node1 ~]# kubectl get pods --output=wide
NAME                                       READY   STATUS              RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
frontend-848d88c7c-cw5l7                   1/1     Running             0          4h27m   10.244.3.22   node4   <none>           <none>
frontend-848d88c7c-rfvct                   1/1     Running             0          4h27m   10.244.3.23   node4   <none>           <none>
frontend-848d88c7c-rjg67                   1/1     Running             0          4h27m   10.244.2.21   node3   <none>           <none>
hello-kubernetes-767d49787b-7bxcg          1/1     Running             2          24h     10.244.3.20   node4   <none>           <none>
hello-kubernetes-767d49787b-k5lp9          1/1     Running             1          14h     10.244.2.16   node3   <none>           <none>
hello-kubernetes-767d49787b-t54q9          1/1     Running             2          25h     10.244.3.17   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running             1          14h     10.244.3.19   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running             1          14h     10.244.3.18   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running             2          25h     10.244.2.17   node3   <none>           <none>
hello-world-6df5659cb7-9vch7               1/1     Running             0          119s    10.244.3.28   node4   <none>           <none>
hello-world-6df5659cb7-h4rgw               0/1     ContainerCreating   0          119s    <none>        node3   <none>           <none>
hello-world-6df5659cb7-h6w92               0/1     ContainerCreating   0          119s    <none>        node3   <none>           <none>
hello-world-6df5659cb7-st4xl               1/1     Running             0          119s    10.244.3.27   node4   <none>           <none>
hello-world-6df5659cb7-tzp28               1/1     Running             0          119s    10.244.3.29   node4   <none>           <none>
mongo-75f59d57f4-f9wkc                     1/1     Running             0          4h29m   10.244.3.21   node4   <none>           <none>
wildfly                                    1/1     Running             2          24h     10.244.2.18   node3   <none>           <none>
wildfly-rc-mw8jh                           1/1     Running             0          3h56m   10.244.2.23   node3   <none>           <none>
wildfly-rc-qqtdh                           1/1     Running             0          3h56m   10.244.2.22   node3   <none>           <none>
[root@node1 ~]# kubectl get pods --output=wide
NAME                                       READY   STATUS              RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
frontend-848d88c7c-cw5l7                   1/1     Running             0          4h27m   10.244.3.22   node4   <none>           <none>
frontend-848d88c7c-rfvct                   1/1     Running             0          4h27m   10.244.3.23   node4   <none>           <none>
frontend-848d88c7c-rjg67                   1/1     Running             0          4h27m   10.244.2.21   node3   <none>           <none>
hello-kubernetes-767d49787b-7bxcg          1/1     Running             2          24h     10.244.3.20   node4   <none>           <none>
hello-kubernetes-767d49787b-k5lp9          1/1     Running             1          14h     10.244.2.16   node3   <none>           <none>
hello-kubernetes-767d49787b-t54q9          1/1     Running             2          25h     10.244.3.17   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running             1          14h     10.244.3.19   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running             1          14h     10.244.3.18   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running             2          25h     10.244.2.17   node3   <none>           <none>
hello-world-6df5659cb7-9vch7               1/1     Running             0          2m4s    10.244.3.28   node4   <none>           <none>
hello-world-6df5659cb7-h4rgw               0/1     ContainerCreating   0          2m4s    <none>        node3   <none>           <none>
hello-world-6df5659cb7-h6w92               0/1     ContainerCreating   0          2m4s    <none>        node3   <none>           <none>
hello-world-6df5659cb7-st4xl               1/1     Running             0          2m4s    10.244.3.27   node4   <none>           <none>
hello-world-6df5659cb7-tzp28               1/1     Running             0          2m4s    10.244.3.29   node4   <none>           <none>
mongo-75f59d57f4-f9wkc                     1/1     Running             0          4h29m   10.244.3.21   node4   <none>           <none>
wildfly                                    1/1     Running             2          24h     10.244.2.18   node3   <none>           <none>
wildfly-rc-mw8jh                           1/1     Running             0          3h56m   10.244.2.23   node3   <none>           <none>
wildfly-rc-qqtdh                           1/1     Running             0          3h56m   10.244.2.22   node3   <none>           <none>
[root@node1 ~]# kubectl get pods -l name=hello-world --output=wide
No resources found in default namespace.
[root@node1 ~]# kubectl get pods --output=wide
NAME                                       READY   STATUS              RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
frontend-848d88c7c-cw5l7                   1/1     Running             0          4h27m   10.244.3.22   node4   <none>           <none>
frontend-848d88c7c-rfvct                   1/1     Running             0          4h27m   10.244.3.23   node4   <none>           <none>
frontend-848d88c7c-rjg67                   1/1     Running             0          4h27m   10.244.2.21   node3   <none>           <none>
hello-kubernetes-767d49787b-7bxcg          1/1     Running             2          24h     10.244.3.20   node4   <none>           <none>
hello-kubernetes-767d49787b-k5lp9          1/1     Running             1          14h     10.244.2.16   node3   <none>           <none>
hello-kubernetes-767d49787b-t54q9          1/1     Running             2          25h     10.244.3.17   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running             1          14h     10.244.3.19   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running             1          14h     10.244.3.18   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running             2          25h     10.244.2.17   node3   <none>           <none>
hello-world-6df5659cb7-9vch7               1/1     Running             0          2m24s   10.244.3.28   node4   <none>           <none>
hello-world-6df5659cb7-h4rgw               0/1     ContainerCreating   0          2m24s   <none>        node3   <none>           <none>
hello-world-6df5659cb7-h6w92               0/1     ContainerCreating   0          2m24s   <none>        node3   <none>           <none>
hello-world-6df5659cb7-st4xl               1/1     Running             0          2m24s   10.244.3.27   node4   <none>           <none>
hello-world-6df5659cb7-tzp28               1/1     Running             0          2m24s   10.244.3.29   node4   <none>           <none>
mongo-75f59d57f4-f9wkc                     1/1     Running             0          4h29m   10.244.3.21   node4   <none>           <none>
wildfly                                    1/1     Running             2          24h     10.244.2.18   node3   <none>           <none>
wildfly-rc-mw8jh                           1/1     Running             0          3h57m   10.244.2.23   node3   <none>           <none>
wildfly-rc-qqtdh                           1/1     Running             0          3h57m   10.244.2.22   node3   <none>           <none>
[root@node1 ~]# kubectl run hello-world --replicas=2 --labels="run=LoadBalancer" --image=gcr.io/google-samples/node-hello:1.0  --port=8080
Flag --replicas has been deprecated, has no effect and will be removed in the future.
pod/hello-world created
[root@node1 ~]# deployment.apps/hello-world created
-bash: deployment.apps/hello-world: No such file or directory
[root@node1 ~]# kubectl expose deployment hello-world --type=LoadBalancer --name=lb-service
service/lb-service exposed
[root@node1 ~]# kubectl get services lb-service
NAME         TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
lb-service   LoadBalancer   10.105.119.121   <pending>     8080:32149/TCP   6s
[root@node1 ~]# kubectl patch svc lb-service  -p '{"spec": {"type": "LoadBalancer", "externalIPs":["172.10.2.10"]}}'
service/lb-service patched
[root@node1 ~]# service/lb-service patchedubectl get services lb-service
-bash: service/lb-service: No such file or directory
[root@node1 ~]# ubectl get services lb-service
-bash: ubectl: command not found
[root@node1 ~]# kubectl get services lb-service
NAME         TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
lb-service   LoadBalancer   10.105.119.121   172.10.2.10   8080:32149/TCP   25s
[root@node1 ~]# curl 172.10.2.10:8080
^C
[root@node1 ~]# netstat -tupln | grep 80
[root@node1 ~]# netstat -tupln | grep 8080
[root@node1 ~]# kubectl get pods --output=wide
NAME                                       READY   STATUS              RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
frontend-848d88c7c-cw5l7                   1/1     Running             0          4h29m   10.244.3.22   node4   <none>           <none>
frontend-848d88c7c-rfvct                   1/1     Running             0          4h29m   10.244.3.23   node4   <none>           <none>
frontend-848d88c7c-rjg67                   1/1     Running             0          4h29m   10.244.2.21   node3   <none>           <none>
hello-kubernetes-767d49787b-7bxcg          1/1     Running             2          24h     10.244.3.20   node4   <none>           <none>
hello-kubernetes-767d49787b-k5lp9          1/1     Running             1          14h     10.244.2.16   node3   <none>           <none>
hello-kubernetes-767d49787b-t54q9          1/1     Running             2          25h     10.244.3.17   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running             1          14h     10.244.3.19   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running             1          14h     10.244.3.18   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running             2          25h     10.244.2.17   node3   <none>           <none>
hello-world                                1/1     Running             0          73s     10.244.3.30   node4   <none>           <none>
hello-world-6df5659cb7-9vch7               1/1     Running             0          4m3s    10.244.3.28   node4   <none>           <none>
hello-world-6df5659cb7-h4rgw               0/1     ContainerCreating   0          4m3s    <none>        node3   <none>           <none>
hello-world-6df5659cb7-h6w92               0/1     ContainerCreating   0          4m3s    <none>        node3   <none>           <none>
hello-world-6df5659cb7-st4xl               1/1     Running             0          4m3s    10.244.3.27   node4   <none>           <none>
hello-world-6df5659cb7-tzp28               1/1     Running             0          4m3s    10.244.3.29   node4   <none>           <none>
mongo-75f59d57f4-f9wkc                     1/1     Running             0          4h31m   10.244.3.21   node4   <none>           <none>
wildfly                                    1/1     Running             2          24h     10.244.2.18   node3   <none>           <none>
wildfly-rc-mw8jh                           1/1     Running             0          3h58m   10.244.2.23   node3   <none>           <none>
wildfly-rc-qqtdh                           1/1     Running             0          3h58m   10.244.2.22   node3   <none>           <none>
[root@node1 ~]# curl https://172.10.2.10:8080
^C
[root@node1 ~]# curl 172.10.2.10:8080

^[[A^C
[root@node1 ~]# curl http://172.10.2.10:8080
^C
[root@node1 ~]# curl http://node1:8080
curl: (7) Failed connect to node1:8080; Connection refused
[root@node1 ~]# curl https://node1:8080
curl: (7) Failed connect to node1:8080; Connection refused
[root@node1 ~]# curl 172.10.2.10:8080
^C
[root@node1 ~]#
[root@node1 ~]# kubectl run hello-world --replicas=5 --labels="run=load-balancer-example" --image=gcr.io/google-samples/node-hello:1.0  --port=8080
Flag --replicas has been deprecated, has no effect and will be removed in the future.
Error from server (AlreadyExists): pods "hello-world" already exists
[root@node1 ~]# kubectl run hello-world1 --replicas=5 --labels="run=load-balancer-example" --image=gcr.io/google-samples/node-hello:1.0
  --port=8080
Flag --replicas has been deprecated, has no effect and will be removed in the future.
pod/hello-world1 created
[root@node1 ~]# kubectl get deployments hello-world1
Error from server (NotFound): deployments.apps "hello-world1" not found
[root@node1 ~]# kubectl get deployments hello-world
NAME          READY   UP-TO-DATE   AVAILABLE   AGE
hello-world   5/5     5            5           6m22s
[root@node1 ~]# docker images
REPOSITORY                           TAG             IMAGE ID       CREATED         SIZE
hello-kubernetes                     1.9             86a3dddf4b22   25 hours ago    123MB
k8s.gcr.io/kube-proxy                v1.20.4         c29e6c583067   3 weeks ago     118MB
k8s.gcr.io/kube-controller-manager   v1.20.4         0a41a1414c53   3 weeks ago     116MB
k8s.gcr.io/kube-apiserver            v1.20.4         ae5eb22e4a9d   3 weeks ago     122MB
k8s.gcr.io/kube-scheduler            v1.20.4         5f8cb769bd73   3 weeks ago     47.3MB
weaveworks/weave-npc                 2.8.1           7f92d556d4ff   7 weeks ago     39.3MB
weaveworks/weave-kube                2.8.1           df29c0a4002c   7 weeks ago     89MB
cloudnativelabs/kube-router          latest          1c170082c326   3 months ago    93.5MB
k8s.gcr.io/coredns                   1.7.0           bfe3a36ebd25   9 months ago    45.2MB
calico/node                          v3.11.3         4f4edb11a2f4   9 months ago    261MB
calico/pod2daemon-flexvol            v3.11.3         8a7b52b94812   9 months ago    112MB
calico/cni                           v3.11.3         0f4b3848f931   9 months ago    222MB
k8s.gcr.io/pause                     3.2             80d28bedfe5d   13 months ago   683kB
node                                 13.6.0-alpine   2d8f48ba52b1   14 months ago   112MB
quay.io/coreos/etcd                  v3.3.18         f4fe69798c9e   15 months ago   45.9MB
haproxy                              1.9.8           cccda2015ff6   20 months ago   89.7MB
quay.io/coreos/flannel               v0.11.0         ff281650a721   2 years ago     52.6MB
[root@node1 ~]#
[root@node1 ~]# curl http://172.17.0.2:31245
^C
[root@node1 ~]# curl http://localhost:31245
curl: (7) Failed connect to localhost:31245; Connection refused
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS    RESTARTS   AGE
frontend-848d88c7c-cw5l7                   1/1     Running   0          4h32m
frontend-848d88c7c-rfvct                   1/1     Running   0          4h32m
frontend-848d88c7c-rjg67                   1/1     Running   0          4h32m
hello-kubernetes-767d49787b-7bxcg          1/1     Running   2          24h
hello-kubernetes-767d49787b-k5lp9          1/1     Running   1          14h
hello-kubernetes-767d49787b-t54q9          1/1     Running   2          25h
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running   2          25h
hello-world                                1/1     Running   0          4m51s
hello-world-6df5659cb7-9vch7               1/1     Running   0          7m41s
hello-world-6df5659cb7-h4rgw               1/1     Running   0          7m41s
hello-world-6df5659cb7-h6w92               1/1     Running   0          7m41s
hello-world-6df5659cb7-st4xl               1/1     Running   0          7m41s
hello-world-6df5659cb7-tzp28               1/1     Running   0          7m41s
hello-world1                               1/1     Running   0          90s
mongo-75f59d57f4-f9wkc                     1/1     Running   0          4h35m
wildfly                                    1/1     Running   2          24h
[root@node1 ~]# kubectl get pods --wide
Error: unknown flag: --wide
See 'kubectl get --help' for usage.
[root@node1 ~]# kubectl get pods -- wide
Error from server (NotFound): pods "wide" not found
[root@node1 ~]# kubectl get pods --widee
[root@node1 ~]# kubectl get pods --output=wide
NAME                                       READY   STATUS    RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
frontend-848d88c7c-cw5l7                   1/1     Running   0          4h33m   10.244.3.22   node4   <none>           <none>
frontend-848d88c7c-rfvct                   1/1     Running   0          4h33m   10.244.3.23   node4   <none>           <none>
frontend-848d88c7c-rjg67                   1/1     Running   0          4h33m   10.244.2.21   node3   <none>           <none>
hello-kubernetes-767d49787b-7bxcg          1/1     Running   2          24h     10.244.3.20   node4   <none>           <none>
hello-kubernetes-767d49787b-k5lp9          1/1     Running   1          14h     10.244.2.16   node3   <none>           <none>
hello-kubernetes-767d49787b-t54q9          1/1     Running   2          25h     10.244.3.17   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running   1          14h     10.244.3.19   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running   1          14h     10.244.3.18   node4   <none>           <none>
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running   2          25h     10.244.2.17   node3   <none>           <none>
hello-world                                1/1     Running   0          5m13s   10.244.3.30   node4   <none>           <none>
hello-world-6df5659cb7-9vch7               1/1     Running   0          8m3s    10.244.3.28   node4   <none>           <none>
hello-world-6df5659cb7-h4rgw               1/1     Running   0          8m3s    10.244.2.25   node3   <none>           <none>
hello-world-6df5659cb7-h6w92               1/1     Running   0          8m3s    10.244.2.26   node3   <none>           <none>
hello-world-6df5659cb7-st4xl               1/1     Running   0          8m3s    10.244.3.27   node4   <none>           <none>
hello-world-6df5659cb7-tzp28               1/1     Running   0          8m3s    10.244.3.29   node4   <none>           <none>
hello-world1                               1/1     Running   0          112s    10.244.2.27   node3   <none>           <none>
mongo-75f59d57f4-f9wkc                     1/1     Running   0          4h35m   10.244.3.21   node4   <none>           <none>
wildfly                                    1/1     Running   2          24h     10.244.2.18   node3   <none>           <none>
[root@node1 ~]#
[root@node1 ~]# kubectl cluster-info
Kubernetes control plane is running at https://0.0.0.0:443
KubeDNS is running at https://0.0.0.0:443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
[root@node1 ~]# curl https://0.0.0.0:8080
curl: (7) Failed connect to 0.0.0.0:8080; Connection refused
[root@node1 ~]# kubectl run user-login --replicas=2 --labels="run=user-login" --image=kingslayerr/teamproject:version2  --port=5000
Flag --replicas has been deprecated, has no effect and will be removed in the future.
pod/user-login created
[root@node1 ~]# kubectl expose deployment user-login --type=NodePort --name=user-login-service
Error from server (NotFound): deployments.apps "user-login" not found
[root@node1 ~]# kubectl expose deployment user-login --type=NodePort --name=user-login-service
Error from server (NotFound): deployments.apps "user-login" not found
[root@node1 ~]# kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)           AGE
frontend                  LoadBalancer   10.107.141.22    172.31.71.223   80:30859/TCP      4h33m
hello-kubernetes          LoadBalancer   10.96.248.85     172.31.71.224   80:32368/TCP      25h
hello-kubernetes-custom   LoadBalancer   10.103.111.165   172.31.71.225   80:30120/TCP      25h
kubernetes                LoadBalancer   10.96.0.1        172.31.71.226   443:30011/TCP     2d23h
lb-service                LoadBalancer   10.105.119.121   172.10.2.10     8080:32149/TCP    6m29s
mongo                     LoadBalancer   10.104.201.97    172.31.71.222   27017:31823/TCP   4h35m
mysql                     LoadBalancer   10.108.144.77    172.31.71.221   3306:30154/TCP    24h
test-service              LoadBalancer   10.110.184.51    <pending>       8080:30811/TCP    8m8s
[root@node1 ~]# kubectl expose deployment user-login --type=NodePort --name=user-login-service
Error from server (NotFound): deployments.apps "user-login" not found
[root@node1 ~]# kubectl expose deployment user-login --type=NodePort --name=user-login-service
[root@node1 ~]# kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
namespace/metallb-system created
[root@node1 ~]# kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
podsecuritypolicy.policy/controller created
podsecuritypolicy.policy/speaker created
serviceaccount/controller created
serviceaccount/speaker created
clusterrole.rbac.authorization.k8s.io/metallb-system:controller created
clusterrole.rbac.authorization.k8s.io/metallb-system:speaker created
role.rbac.authorization.k8s.io/config-watcher created
role.rbac.authorization.k8s.io/pod-lister created
clusterrolebinding.rbac.authorization.k8s.io/metallb-system:controller created
clusterrolebinding.rbac.authorization.k8s.io/metallb-system:speaker created
rolebinding.rbac.authorization.k8s.io/config-watcher created
rolebinding.rbac.authorization.k8s.io/pod-lister created
daemonset.apps/speaker created
deployment.apps/controller created
[root@node1 ~]# # On first install only
[root@node1 ~]# kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
secret/memberlist created
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS    RESTARTS   AGE
hello-kubernetes-767d49787b-7bxcg          1/1     Running   2          24h
hello-kubernetes-767d49787b-k5lp9          1/1     Running   1          14h
hello-kubernetes-767d49787b-t54q9          1/1     Running   2          25h
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running   2          25h
hello-world                                1/1     Running   0          7m55s
hello-world-6df5659cb7-9vch7               1/1     Running   0          10m
hello-world-6df5659cb7-h4rgw               1/1     Running   0          10m
hello-world-6df5659cb7-h6w92               1/1     Running   0          10m
hello-world-6df5659cb7-st4xl               1/1     Running   0          10m
hello-world-6df5659cb7-tzp28               1/1     Running   0          10m
hello-world1                               1/1     Running   0          4m34s
user-login                                 1/1     Running   0          91s
wildfly                                    1/1     Running   2          24h
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS    RESTARTS   AGE
hello-kubernetes-767d49787b-7bxcg          1/1     Running   2          24h
hello-kubernetes-767d49787b-k5lp9          1/1     Running   1          14h
hello-kubernetes-767d49787b-t54q9          1/1     Running   2          25h
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running   2          25h
hello-world                                1/1     Running   0          8m5s
hello-world-6df5659cb7-9vch7               1/1     Running   0          10m
hello-world-6df5659cb7-h4rgw               1/1     Running   0          10m
hello-world-6df5659cb7-h6w92               1/1     Running   0          10m
hello-world-6df5659cb7-st4xl               1/1     Running   0          10m
hello-world-6df5659cb7-tzp28               1/1     Running   0          10m
hello-world1                               1/1     Running   0          4m44s
user-login                                 1/1     Running   0          101s
wildfly                                    1/1     Running   2          24h
[root@node1 ~]# kubectl get svc
NAME                      TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)           AGE
frontend                  LoadBalancer   10.107.141.22    172.31.71.223   80:30859/TCP      4h34m
hello-kubernetes          LoadBalancer   10.96.248.85     172.31.71.224   80:32368/TCP      25h
hello-kubernetes-custom   LoadBalancer   10.103.111.165   172.31.71.225   80:30120/TCP      25h
kubernetes                LoadBalancer   10.96.0.1        172.31.71.226   443:30011/TCP     2d23h
lb-service                LoadBalancer   10.105.119.121   172.10.2.10     8080:32149/TCP    7m57s
mongo                     LoadBalancer   10.104.201.97    172.31.71.222   27017:31823/TCP   4h37m
mysql                     LoadBalancer   10.108.144.77    172.31.71.221   3306:30154/TCP    24h
test-service              LoadBalancer   10.110.184.51    <pending>       8080:30811/TCP    9m36s
[root@node1 ~]# kubectl get svc frontend
NAME       TYPE           CLUSTER-IP      EXTERNAL-IP     PORT(S)        AGE
frontend   LoadBalancer   10.107.141.22   172.31.71.223   80:30859/TCP   4h35m
[root@node1 ~]# kubectl get svc hello-kubernetes
NAME               TYPE           CLUSTER-IP     EXTERNAL-IP     PORT(S)        AGE
hello-kubernetes   LoadBalancer   10.96.248.85   172.31.71.224   80:32368/TCP   25h
[root@node1 ~]# kubectl get svc kubernetes
NAME         TYPE           CLUSTER-IP   EXTERNAL-IP     PORT(S)         AGE
kubernetes   LoadBalancer   10.96.0.1    172.31.71.226   443:30011/TCP   2d23h
[root@node1 ~]# kubectl get svc lb-service
NAME         TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
lb-service   LoadBalancer   10.105.119.121   172.10.2.10   8080:32149/TCP   9m17s
[root@node1 ~]# kubectl get svc mysql
NAME    TYPE           CLUSTER-IP      EXTERNAL-IP     PORT(S)          AGE
mysql   LoadBalancer   10.108.144.77   172.31.71.221   3306:30154/TCP   24h
[root@node1 ~]# kubectl get svc mongo
NAME    TYPE           CLUSTER-IP      EXTERNAL-IP     PORT(S)           AGE
mongo   LoadBalancer   10.104.201.97   172.31.71.222   27017:31823/TCP   4h38m
[root@node1 ~]# kubectl get svc test-service
NAME           TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
test-service   LoadBalancer   10.110.184.51   <pending>     8080:30811/TCP   11m
[root@node1 ~]#
[root@node1 ~]# ls
anaconda-ks.cfg  devops-pipeline  examples          k8s-wordsmith-demo  original-ks.cfg
aws-pipeline     docker-kafka     hello-kubernetes  k8s-workshop
[root@node1 ~]# docker ps | egrep kubelet
[root@node1 ~]# docker ps | egrep kubelet
[root@node1 ~]# docker ps
CONTAINER ID   IMAGE                         COMMAND                  CREATED         STATUS                         PORTS     NAMES
35ea0829e8c1   metallb/speaker               "/speaker --port=747…"   3 minutes ago   Up 3 minutes                             k8s_speaker_speaker-kzgxl_metallb-system_fbc6685e-a7af-43ed-b720-e079a9f706c5_0
3395d740fa06   k8s.gcr.io/pause:3.2          "/pause"                 3 minutes ago   Up 3 minutes                             k8s_POD_speaker-kzgxl_metallb-system_fbc6685e-a7af-43ed-b720-e079a9f706c5_0
5ca9afea6374   df29c0a4002c                  "/home/weave/launch.…"   4 hours ago     Up 4 hours                               k8s_weave_weave-net-98bdh_kube-system_f140028f-f068-450c-a089-e3a128a51e4a_1
8d9fbc00dbf1   weaveworks/weave-npc          "/usr/bin/launch.sh"     4 hours ago     Up 4 hours                               k8s_weave-npc_weave-net-98bdh_kube-system_f140028f-f068-450c-a089-e3a128a51e4a_0
5e71f044e885   k8s.gcr.io/pause:3.2          "/pause"                 4 hours ago     Up 4 hours                               k8s_POD_weave-net-98bdh_kube-system_f140028f-f068-450c-a089-e3a128a51e4a_0
0ef780ee4e22   bfe3a36ebd25                  "/coredns -conf /etc…"   10 hours ago    Up 10 hours                              k8s_coredns_coredns-74ff55c5b-wgbmp_kube-system_44e1d1e3-5da1-4b8b-8cec-1f648bb75ff8_4
6a46802e07c5   bfe3a36ebd25                  "/coredns -conf /etc…"   10 hours ago    Up 10 hours                              k8s_coredns_coredns-74ff55c5b-kn4z4_kube-system_b505c710-09ad-4925-b601-02d478df6731_4
6cadc139eaf9   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                              k8s_POD_coredns-74ff55c5b-wgbmp_kube-system_44e1d1e3-5da1-4b8b-8cec-1f648bb75ff8_17
806d5961add1   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                              k8s_POD_coredns-74ff55c5b-kn4z4_kube-system_b505c710-09ad-4925-b601-02d478df6731_17
d2aca2226f09   ff281650a721                  "/opt/bin/flanneld -…"   10 hours ago    Up 10 hours                              k8s_kube-flannel_canal-4dkzb_kube-system_7a5ba546-5e7b-40f6-b21b-366a62909ac1_4
fece1e3d2aa8   4f4edb11a2f4                  "start_runit"            10 hours ago    Up 10 hours                              k8s_calico-node_canal-4dkzb_kube-system_7a5ba546-5e7b-40f6-b21b-366a62909ac1_4
af97708fe38f   c29e6c583067                  "/usr/local/bin/kube…"   10 hours ago    Up 10 hours                              k8s_kube-proxy_kube-proxy-4zgmh_kube-system_2e3c54c4-dfe8-4b58-a56d-377db2637c25_4
fe7b0eaaf8d2   cloudnativelabs/kube-router   "/usr/local/bin/kube…"   10 hours ago    Up 10 hours                              k8s_kube-router_kube-router-6pctn_kube-system_995815f9-9921-4d95-ae73-adb296053c4d_2
0c9d3edfade6   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                              k8s_POD_canal-4dkzb_kube-system_7a5ba546-5e7b-40f6-b21b-366a62909ac1_4
a428dd7b7d07   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                              k8s_POD_kube-router-6pctn_kube-system_995815f9-9921-4d95-ae73-adb296053c4d_2
29cd83d9d9e4   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                              k8s_POD_kube-proxy-4zgmh_kube-system_2e3c54c4-dfe8-4b58-a56d-377db2637c25_4
ed55f6919642   0a41a1414c53                  "kube-controller-man…"   10 hours ago    Up 10 hours                              k8s_kube-controller-manager_kube-controller-manager-node1_kube-system_5231365cd53795a9ca8fa6224344daf8_4
4911233bf2d6   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                              k8s_POD_kube-controller-manager-node1_kube-system_5231365cd53795a9ca8fa6224344daf8_4
db4ccd6265af   ae5eb22e4a9d                  "kube-apiserver --ad…"   10 hours ago    Up 10 hours                              k8s_kube-apiserver_kube-apiserver-node1_kube-system_8be81fda62016ceaa242a604584dc1f0_15
c395a3eba00c   5f8cb769bd73                  "kube-scheduler --au…"   10 hours ago    Up 10 hours                              k8s_kube-scheduler_kube-scheduler-node1_kube-system_90280dfce8bf44f46a3e41b6c4a9f551_4
638ffa235f2c   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                              k8s_POD_kube-scheduler-node1_kube-system_90280dfce8bf44f46a3e41b6c4a9f551_4
dac0d2dc3b56   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                              k8s_POD_kube-apiserver-node1_kube-system_8be81fda62016ceaa242a604584dc1f0_4
0b2d8ffed5bc   quay.io/coreos/etcd:v3.3.18   "/usr/local/bin/etcd…"   3 days ago      Restarting (1) 7 seconds ago             etcd
75ec9f3792a3   haproxy:1.9.8                 "/docker-entrypoint.…"   3 days ago      Up 10 hours                              haproxy
[root@node1 ~]# docker container ps
CONTAINER ID   IMAGE                         COMMAND                  CREATED         STATUS                          PORTS     NAMES
35ea0829e8c1   metallb/speaker               "/speaker --port=747…"   3 minutes ago   Up 3 minutes                              k8s_speaker_speaker-kzgxl_metallb-system_fbc6685e-a7af-43ed-b720-e079a9f706c5_0
3395d740fa06   k8s.gcr.io/pause:3.2          "/pause"                 4 minutes ago   Up 4 minutes                              k8s_POD_speaker-kzgxl_metallb-system_fbc6685e-a7af-43ed-b720-e079a9f706c5_0
5ca9afea6374   df29c0a4002c                  "/home/weave/launch.…"   4 hours ago     Up 4 hours                                k8s_weave_weave-net-98bdh_kube-system_f140028f-f068-450c-a089-e3a128a51e4a_1
8d9fbc00dbf1   weaveworks/weave-npc          "/usr/bin/launch.sh"     4 hours ago     Up 4 hours                                k8s_weave-npc_weave-net-98bdh_kube-system_f140028f-f068-450c-a089-e3a128a51e4a_0
5e71f044e885   k8s.gcr.io/pause:3.2          "/pause"                 4 hours ago     Up 4 hours                                k8s_POD_weave-net-98bdh_kube-system_f140028f-f068-450c-a089-e3a128a51e4a_0
0ef780ee4e22   bfe3a36ebd25                  "/coredns -conf /etc…"   10 hours ago    Up 10 hours                               k8s_coredns_coredns-74ff55c5b-wgbmp_kube-system_44e1d1e3-5da1-4b8b-8cec-1f648bb75ff8_4
6a46802e07c5   bfe3a36ebd25                  "/coredns -conf /etc…"   10 hours ago    Up 10 hours                               k8s_coredns_coredns-74ff55c5b-kn4z4_kube-system_b505c710-09ad-4925-b601-02d478df6731_4
6cadc139eaf9   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                               k8s_POD_coredns-74ff55c5b-wgbmp_kube-system_44e1d1e3-5da1-4b8b-8cec-1f648bb75ff8_17
806d5961add1   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                               k8s_POD_coredns-74ff55c5b-kn4z4_kube-system_b505c710-09ad-4925-b601-02d478df6731_17
d2aca2226f09   ff281650a721                  "/opt/bin/flanneld -…"   10 hours ago    Up 10 hours                               k8s_kube-flannel_canal-4dkzb_kube-system_7a5ba546-5e7b-40f6-b21b-366a62909ac1_4
fece1e3d2aa8   4f4edb11a2f4                  "start_runit"            10 hours ago    Up 10 hours                               k8s_calico-node_canal-4dkzb_kube-system_7a5ba546-5e7b-40f6-b21b-366a62909ac1_4
af97708fe38f   c29e6c583067                  "/usr/local/bin/kube…"   10 hours ago    Up 10 hours                               k8s_kube-proxy_kube-proxy-4zgmh_kube-system_2e3c54c4-dfe8-4b58-a56d-377db2637c25_4
fe7b0eaaf8d2   cloudnativelabs/kube-router   "/usr/local/bin/kube…"   10 hours ago    Up 10 hours                               k8s_kube-router_kube-router-6pctn_kube-system_995815f9-9921-4d95-ae73-adb296053c4d_2
0c9d3edfade6   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                               k8s_POD_canal-4dkzb_kube-system_7a5ba546-5e7b-40f6-b21b-366a62909ac1_4
a428dd7b7d07   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                               k8s_POD_kube-router-6pctn_kube-system_995815f9-9921-4d95-ae73-adb296053c4d_2
29cd83d9d9e4   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                               k8s_POD_kube-proxy-4zgmh_kube-system_2e3c54c4-dfe8-4b58-a56d-377db2637c25_4
ed55f6919642   0a41a1414c53                  "kube-controller-man…"   10 hours ago    Up 10 hours                               k8s_kube-controller-manager_kube-controller-manager-node1_kube-system_5231365cd53795a9ca8fa6224344daf8_4
4911233bf2d6   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                               k8s_POD_kube-controller-manager-node1_kube-system_5231365cd53795a9ca8fa6224344daf8_4
db4ccd6265af   ae5eb22e4a9d                  "kube-apiserver --ad…"   10 hours ago    Up 10 hours                               k8s_kube-apiserver_kube-apiserver-node1_kube-system_8be81fda62016ceaa242a604584dc1f0_15
c395a3eba00c   5f8cb769bd73                  "kube-scheduler --au…"   10 hours ago    Up 10 hours                               k8s_kube-scheduler_kube-scheduler-node1_kube-system_90280dfce8bf44f46a3e41b6c4a9f551_4
638ffa235f2c   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                               k8s_POD_kube-scheduler-node1_kube-system_90280dfce8bf44f46a3e41b6c4a9f551_4
dac0d2dc3b56   k8s.gcr.io/pause:3.2          "/pause"                 10 hours ago    Up 10 hours                               k8s_POD_kube-apiserver-node1_kube-system_8be81fda62016ceaa242a604584dc1f0_4
0b2d8ffed5bc   quay.io/coreos/etcd:v3.3.18   "/usr/local/bin/etcd…"   3 days ago      Restarting (1) 40 seconds ago             etcd
75ec9f3792a3   haproxy:1.9.8                 "/docker-entrypoint.…"   3 days ago      Up 10 hours                               haproxy
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS    RESTARTS   AGE
hello-kubernetes-767d49787b-7bxcg          1/1     Running   2          24h
hello-kubernetes-767d49787b-k5lp9          1/1     Running   1          14h
hello-kubernetes-767d49787b-t54q9          1/1     Running   2          25h
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running   2          25h
hello-world                                1/1     Running   0          13m
hello-world-6df5659cb7-9vch7               1/1     Running   0          16m
hello-world-6df5659cb7-h4rgw               1/1     Running   0          16m
hello-world-6df5659cb7-h6w92               1/1     Running   0          16m
hello-world-6df5659cb7-st4xl               1/1     Running   0          16m
hello-world-6df5659cb7-tzp28               1/1     Running   0          16m
hello-world1                               1/1     Running   0          10m
user-login                                 1/1     Running   0          7m29s
wildfly                                    1/1     Running   2          24h
[root@node1 ~]# kubectl logs hello-kubernetes-767d49787b-7bxcg

> hello-kubernetes@1.8.0 start /usr/src/app
> node server.js

Listening on: http://hello-kubernetes-767d49787b-7bxcg:8080
[root@node1 ~]# curl -i http://hello-kubernetes-767d49787b-7bxcg:8080
curl: (6) Could not resolve host: hello-kubernetes-767d49787b-7bxcg; Unknown error
[root@node1 ~]# kubectl get jobs
No resources found in default namespace.
[root@node1 ~]# kubectl get replicationcontroller [replication-controller-name]
Error from server (NotFound): replicationcontrollers "[replication-controller-name]" not found
[root@node1 ~]#
[root@node1 ~]# kubectl get pods --field-selector=spec.nodeName=[server-name]
No resources found in default namespace.
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS    RESTARTS   AGE
hello-kubernetes-767d49787b-7bxcg          1/1     Running   2          24h
hello-kubernetes-767d49787b-k5lp9          1/1     Running   1          14h
hello-kubernetes-767d49787b-t54q9          1/1     Running   2          25h
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Running   1          14h
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Running   2          25h
hello-world                                1/1     Running   0          16m
hello-world-6df5659cb7-9vch7               1/1     Running   0          19m
hello-world-6df5659cb7-h4rgw               1/1     Running   0          19m
hello-world-6df5659cb7-h6w92               1/1     Running   0          19m
hello-world-6df5659cb7-st4xl               1/1     Running   0          19m
hello-world-6df5659cb7-tzp28               1/1     Running   0          19m
hello-world1                               1/1     Running   0          13m
user-login                                 1/1     Running   0          10m
wildfly                                    1/1     Running   2          24h
[root@node1 ~]# kubectl delete pods --all
pod "hello-kubernetes-767d49787b-7bxcg" deleted
pod "hello-kubernetes-767d49787b-k5lp9" deleted
pod "hello-kubernetes-767d49787b-t54q9" deleted
pod "hello-kubernetes-custom-5bdd5fd984-l92mr" deleted
pod "hello-kubernetes-custom-5bdd5fd984-lfnpr" deleted
pod "hello-kubernetes-custom-5bdd5fd984-rjg8x" deleted
pod "hello-world" deleted
pod "hello-world-6df5659cb7-9vch7" deleted
pod "hello-world-6df5659cb7-h4rgw" deleted
pod "hello-world-6df5659cb7-h6w92" deleted
pod "hello-world-6df5659cb7-st4xl" deleted
pod "hello-world-6df5659cb7-tzp28" deleted
pod "hello-world1" deleted
pod "user-login" deleted
pod "wildfly" deleted

^C
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS              RESTARTS   AGE
hello-kubernetes-767d49787b-7bxcg          1/1     Terminating         2          24h
hello-kubernetes-767d49787b-8g28p          0/1     ContainerCreating   0          6s
hello-kubernetes-767d49787b-fdbzz          0/1     ContainerCreating   0          6s
hello-kubernetes-767d49787b-k5lp9          0/1     Terminating         1          14h
hello-kubernetes-767d49787b-t54q9          1/1     Terminating         2          25h
hello-kubernetes-767d49787b-xsz6v          0/1     ContainerCreating   0          6s
hello-kubernetes-custom-5bdd5fd984-d8hvn   0/1     ContainerCreating   0          5s
hello-kubernetes-custom-5bdd5fd984-l92mr   1/1     Terminating         1          14h
hello-kubernetes-custom-5bdd5fd984-lfnpr   1/1     Terminating         1          14h
hello-kubernetes-custom-5bdd5fd984-rjg8x   1/1     Terminating         2          25h
hello-kubernetes-custom-5bdd5fd984-sdmpm   0/1     ContainerCreating   0          6s
hello-kubernetes-custom-5bdd5fd984-tgdpg   0/1     ContainerCreating   0          5s
hello-world                                1/1     Terminating         0          16m
hello-world-6df5659cb7-6r9km               0/1     ContainerCreating   0          5s
hello-world-6df5659cb7-96xl5               0/1     ContainerCreating   0          5s
hello-world-6df5659cb7-9vch7               1/1     Terminating         0          19m
hello-world-6df5659cb7-gcbv4               0/1     ContainerCreating   0          5s
hello-world-6df5659cb7-h4rgw               1/1     Terminating         0          19m
hello-world-6df5659cb7-h6w92               1/1     Terminating         0          19m
hello-world-6df5659cb7-hpfsl               0/1     ContainerCreating   0          5s
hello-world-6df5659cb7-q74pf               0/1     ContainerCreating   0          5s
hello-world-6df5659cb7-st4xl               1/1     Terminating         0          19m
hello-world-6df5659cb7-tzp28               1/1     Terminating         0          19m
hello-world1                               1/1     Terminating         0          13m
user-login                                 1/1     Terminating         0          10m
wildfly                                    1/1     Terminating         2          24h
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS              RESTARTS   AGE
hello-kubernetes-767d49787b-7bxcg          0/1     Terminating         2          24h
hello-kubernetes-767d49787b-8g28p          1/1     Running             0          8s
hello-kubernetes-767d49787b-fdbzz          1/1     Running             0          8s
hello-kubernetes-767d49787b-t54q9          0/1     Terminating         2          25h
hello-kubernetes-767d49787b-xsz6v          0/1     ContainerCreating   0          8s
hello-kubernetes-custom-5bdd5fd984-d8hvn   1/1     Running             0          7s
hello-kubernetes-custom-5bdd5fd984-l92mr   0/1     Terminating         1          14h
hello-kubernetes-custom-5bdd5fd984-lfnpr   0/1     Terminating         1          14h
hello-kubernetes-custom-5bdd5fd984-rjg8x   0/1     Terminating         2          25h
hello-kubernetes-custom-5bdd5fd984-sdmpm   1/1     Running             0          8s
hello-kubernetes-custom-5bdd5fd984-tgdpg   1/1     Running             0          7s
hello-world                                1/1     Terminating         0          16m
hello-world-6df5659cb7-6r9km               0/1     ContainerCreating   0          7s
hello-world-6df5659cb7-96xl5               1/1     Running             0          7s
hello-world-6df5659cb7-9vch7               1/1     Terminating         0          19m
hello-world-6df5659cb7-gcbv4               0/1     ContainerCreating   0          7s
hello-world-6df5659cb7-h4rgw               1/1     Terminating         0          19m
hello-world-6df5659cb7-h6w92               1/1     Terminating         0          19m
hello-world-6df5659cb7-hpfsl               1/1     Running             0          7s
hello-world-6df5659cb7-q74pf               0/1     ContainerCreating   0          7s
hello-world-6df5659cb7-st4xl               1/1     Terminating         0          19m
hello-world-6df5659cb7-tzp28               1/1     Terminating         0          19m
hello-world1                               1/1     Terminating         0          13m
user-login                                 0/1     Terminating         0          10m
wildfly                                    0/1     Terminating         2          24h
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS              RESTARTS   AGE
hello-kubernetes-767d49787b-8g28p          1/1     Running             0          11s
hello-kubernetes-767d49787b-fdbzz          1/1     Running             0          11s
hello-kubernetes-767d49787b-t54q9          0/1     Terminating         2          25h
hello-kubernetes-767d49787b-xsz6v          0/1     ContainerCreating   0          11s
hello-kubernetes-custom-5bdd5fd984-d8hvn   1/1     Running             0          10s
hello-kubernetes-custom-5bdd5fd984-l92mr   0/1     Terminating         1          14h
hello-kubernetes-custom-5bdd5fd984-lfnpr   0/1     Terminating         1          14h
hello-kubernetes-custom-5bdd5fd984-rjg8x   0/1     Terminating         2          25h
hello-kubernetes-custom-5bdd5fd984-sdmpm   1/1     Running             0          11s
hello-kubernetes-custom-5bdd5fd984-tgdpg   1/1     Running             0          10s
hello-world                                1/1     Terminating         0          16m
hello-world-6df5659cb7-6r9km               1/1     Running             0          10s
hello-world-6df5659cb7-96xl5               1/1     Running             0          10s
hello-world-6df5659cb7-9vch7               1/1     Terminating         0          19m
hello-world-6df5659cb7-gcbv4               1/1     Running             0          10s
hello-world-6df5659cb7-h4rgw               1/1     Terminating         0          19m
hello-world-6df5659cb7-h6w92               1/1     Terminating         0          19m
hello-world-6df5659cb7-hpfsl               1/1     Running             0          10s
hello-world-6df5659cb7-q74pf               0/1     ContainerCreating   0          10s
hello-world-6df5659cb7-st4xl               1/1     Terminating         0          19m
hello-world-6df5659cb7-tzp28               1/1     Terminating         0          19m
hello-world1                               1/1     Terminating         0          13m
user-login                                 0/1     Terminating         0          10m
wildfly                                    0/1     Terminating         2          24h
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS              RESTARTS   AGE
hello-kubernetes-767d49787b-8g28p          1/1     Running             0          13s
hello-kubernetes-767d49787b-fdbzz          1/1     Running             0          13s
hello-kubernetes-767d49787b-t54q9          0/1     Terminating         2          25h
hello-kubernetes-767d49787b-xsz6v          0/1     ContainerCreating   0          13s
hello-kubernetes-custom-5bdd5fd984-d8hvn   1/1     Running             0          12s
hello-kubernetes-custom-5bdd5fd984-l92mr   0/1     Terminating         1          14h
hello-kubernetes-custom-5bdd5fd984-lfnpr   0/1     Terminating         1          14h
hello-kubernetes-custom-5bdd5fd984-rjg8x   0/1     Terminating         2          25h
hello-kubernetes-custom-5bdd5fd984-sdmpm   1/1     Running             0          13s
hello-kubernetes-custom-5bdd5fd984-tgdpg   1/1     Running             0          12s
hello-world                                1/1     Terminating         0          16m
hello-world-6df5659cb7-6r9km               1/1     Running             0          12s
hello-world-6df5659cb7-96xl5               1/1     Running             0          12s
hello-world-6df5659cb7-9vch7               1/1     Terminating         0          19m
hello-world-6df5659cb7-gcbv4               1/1     Running             0          12s
hello-world-6df5659cb7-h4rgw               1/1     Terminating         0          19m
hello-world-6df5659cb7-h6w92               1/1     Terminating         0          19m
hello-world-6df5659cb7-hpfsl               1/1     Running             0          12s
hello-world-6df5659cb7-q74pf               0/1     ContainerCreating   0          12s
hello-world-6df5659cb7-st4xl               1/1     Terminating         0          19m
hello-world-6df5659cb7-tzp28               1/1     Terminating         0          19m
hello-world1                               1/1     Terminating         0          13m
user-login                                 0/1     Terminating         0          10m
wildfly                                    0/1     Terminating         2          24h
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS              RESTARTS   AGE
hello-kubernetes-767d49787b-8g28p          1/1     Running             0          15s
hello-kubernetes-767d49787b-fdbzz          1/1     Running             0          15s
hello-kubernetes-767d49787b-xsz6v          0/1     ContainerCreating   0          15s
hello-kubernetes-custom-5bdd5fd984-d8hvn   1/1     Running             0          14s
hello-kubernetes-custom-5bdd5fd984-rjg8x   0/1     Terminating         2          25h
hello-kubernetes-custom-5bdd5fd984-sdmpm   1/1     Running             0          15s
hello-kubernetes-custom-5bdd5fd984-tgdpg   1/1     Running             0          14s
hello-world                                1/1     Terminating         0          16m
hello-world-6df5659cb7-6r9km               1/1     Running             0          14s
hello-world-6df5659cb7-96xl5               1/1     Running             0          14s
hello-world-6df5659cb7-9vch7               1/1     Terminating         0          19m
hello-world-6df5659cb7-gcbv4               1/1     Running             0          14s
hello-world-6df5659cb7-h4rgw               1/1     Terminating         0          19m
hello-world-6df5659cb7-h6w92               1/1     Terminating         0          19m
hello-world-6df5659cb7-hpfsl               1/1     Running             0          14s
hello-world-6df5659cb7-q74pf               0/1     ContainerCreating   0          14s
hello-world-6df5659cb7-st4xl               1/1     Terminating         0          19m
hello-world-6df5659cb7-tzp28               1/1     Terminating         0          19m
hello-world1                               1/1     Terminating         0          13m
user-login                                 0/1     Terminating         0          10m
wildfly                                    0/1     Terminating         2          24h
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS    RESTARTS   AGE
hello-kubernetes-767d49787b-8g28p          1/1     Running   0          46s
hello-kubernetes-767d49787b-fdbzz          1/1     Running   0          46s
hello-kubernetes-767d49787b-xsz6v          1/1     Running   0          46s
hello-kubernetes-custom-5bdd5fd984-d8hvn   1/1     Running   0          45s
hello-kubernetes-custom-5bdd5fd984-sdmpm   1/1     Running   0          46s
hello-kubernetes-custom-5bdd5fd984-tgdpg   1/1     Running   0          45s
hello-world-6df5659cb7-6r9km               1/1     Running   0          45s
hello-world-6df5659cb7-96xl5               1/1     Running   0          45s
hello-world-6df5659cb7-gcbv4               1/1     Running   0          45s
hello-world-6df5659cb7-hpfsl               1/1     Running   0          45s
hello-world-6df5659cb7-q74pf               1/1     Running   0          45s
[root@node1 ~]# kubectl get deployments
NAME                      READY   UP-TO-DATE   AVAILABLE   AGE
hello-kubernetes          3/3     3            3           25h
hello-kubernetes-custom   3/3     3            3           25h
hello-world               5/5     5            5           20m
[root@node1 ~]# kubectl delete deployments --all
deployment.apps "hello-kubernetes" deleted
deployment.apps "hello-kubernetes-custom" deleted
deployment.apps "hello-world" deleted
[root@node1 ~]# kubectl get deployments
No resources found in default namespace.
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS        RESTARTS   AGE
hello-kubernetes-767d49787b-fdbzz          0/1     Terminating   0          65s
hello-kubernetes-767d49787b-xsz6v          0/1     Terminating   0          65s
hello-kubernetes-custom-5bdd5fd984-d8hvn   0/1     Terminating   0          64s
hello-world-6df5659cb7-6r9km               1/1     Terminating   0          64s
hello-world-6df5659cb7-96xl5               1/1     Terminating   0          64s
hello-world-6df5659cb7-gcbv4               1/1     Terminating   0          64s
hello-world-6df5659cb7-hpfsl               1/1     Terminating   0          64s
hello-world-6df5659cb7-q74pf               1/1     Terminating   0          64s
[root@node1 ~]# kubectl get pods
NAME                                       READY   STATUS        RESTARTS   AGE
hello-kubernetes-767d49787b-fdbzz          0/1     Terminating   0          67s
hello-kubernetes-767d49787b-xsz6v          0/1     Terminating   0          67s
hello-kubernetes-custom-5bdd5fd984-d8hvn   0/1     Terminating   0          66s
hello-world-6df5659cb7-6r9km               1/1     Terminating   0          66s
hello-world-6df5659cb7-96xl5               1/1     Terminating   0          66s
hello-world-6df5659cb7-gcbv4               1/1     Terminating   0          66s
hello-world-6df5659cb7-hpfsl               1/1     Terminating   0          66s
hello-world-6df5659cb7-q74pf               1/1     Terminating   0          66s
[root@node1 ~]# kubectl get pods
NAME                           READY   STATUS        RESTARTS   AGE
hello-world-6df5659cb7-6r9km   1/1     Terminating   0          67s
hello-world-6df5659cb7-96xl5   1/1     Terminating   0          67s
hello-world-6df5659cb7-gcbv4   1/1     Terminating   0          67s
hello-world-6df5659cb7-hpfsl   1/1     Terminating   0          67s
hello-world-6df5659cb7-q74pf   1/1     Terminating   0          67s
[root@node1 ~]# kubectl get pods
NAME                           READY   STATUS        RESTARTS   AGE
hello-world-6df5659cb7-6r9km   1/1     Terminating   0          68s
hello-world-6df5659cb7-96xl5   1/1     Terminating   0          68s
hello-world-6df5659cb7-gcbv4   1/1     Terminating   0          68s
hello-world-6df5659cb7-hpfsl   1/1     Terminating   0          68s
hello-world-6df5659cb7-q74pf   1/1     Terminating   0          68s
[root@node1 ~]# kubectl get pods
NAME                           READY   STATUS        RESTARTS   AGE
hello-world-6df5659cb7-6r9km   1/1     Terminating   0          69s
hello-world-6df5659cb7-96xl5   1/1     Terminating   0          69s
hello-world-6df5659cb7-gcbv4   1/1     Terminating   0          69s
hello-world-6df5659cb7-hpfsl   1/1     Terminating   0          69s
hello-world-6df5659cb7-q74pf   1/1     Terminating   0          69s
[root@node1 ~]# kubectl get pods
NAME                           READY   STATUS        RESTARTS   AGE
hello-world-6df5659cb7-6r9km   1/1     Terminating   0          70s
hello-world-6df5659cb7-96xl5   1/1     Terminating   0          70s
hello-world-6df5659cb7-gcbv4   1/1     Terminating   0          70s
hello-world-6df5659cb7-hpfsl   1/1     Terminating   0          70s
hello-world-6df5659cb7-q74pf   1/1     Terminating   0          70s
[root@node1 ~]# kubectl get pods
NAME                           READY   STATUS        RESTARTS   AGE
hello-world-6df5659cb7-6r9km   1/1     Terminating   0          71s
hello-world-6df5659cb7-96xl5   1/1     Terminating   0          71s
hello-world-6df5659cb7-gcbv4   1/1     Terminating   0          71s
hello-world-6df5659cb7-hpfsl   1/1     Terminating   0          71s
hello-world-6df5659cb7-q74pf   1/1     Terminating   0          71s
[root@node1 ~]#
[root@node1 ~]#
[root@node1 ~]# kubectl run monkey --image=monkey --record
pod/monkey created
[root@node1 ~]# kubectl get pods
NAME     READY   STATUS              RESTARTS   AGE
monkey   0/1     ContainerCreating   0          2s
[root@node1 ~]# kubectl get pv
No resources found
[root@node1 ~]# kubectl get pvc
No resources found in default namespace.
[root@node1 ~]# kubectl get secrets
NAME                  TYPE                                  DATA   AGE
default-token-7pwg2   kubernetes.io/service-account-token   3      2d23h
[root@node1 ~]# kubectl proxy
Starting to serve on 127.0.0.1:8001
^C
[root@node1 ~]# kubectl run sise --image=quay.io/openshiftlabs/simpleservice:0.5.0 --port=9876
pod/sise created
[root@node1 ~]# kubectl get pods
NAME     READY   STATUS              RESTARTS   AGE
monkey   0/1     ErrImagePull        0          2m25s
sise     0/1     ContainerCreating   0          6s
[root@node1 ~]# kubectl exec sise -t -- curl -s localhost:9876/info
error: unable to upgrade connection: container not found ("sise")
[root@node1 ~]# kubectl get pods
NAME     READY   STATUS              RESTARTS   AGE
monkey   0/1     ImagePullBackOff    0          2m42s
sise     0/1     ContainerCreating   0          23s
[root@node1 ~]# kubectl get pods
NAME     READY   STATUS              RESTARTS   AGE
monkey   0/1     ImagePullBackOff    0          2m45s
sise     0/1     ContainerCreating   0          26s
[root@node1 ~]# kubectl get pods
NAME     READY   STATUS              RESTARTS   AGE
monkey   0/1     ImagePullBackOff    0          3m13s
sise     0/1     ContainerCreating   0          54s
[root@node1 ~]# kubectl get pods
NAME     READY   STATUS              RESTARTS   AGE
monkey   0/1     ImagePullBackOff    0          3m14s
sise     0/1     ContainerCreating   0          55s
[root@node1 ~]# kubectl get pods --output=wide
NAME     READY   STATUS              RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
monkey   0/1     ImagePullBackOff    0          3m20s   10.244.3.38   node4   <none>           <none>
sise     0/1     ContainerCreating   0          61s     <none>        node4   <none>           <none>
[root@node1 ~]# kubectl get pods --output=wide
NAME     READY   STATUS              RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
monkey   0/1     ImagePullBackOff    0          3m24s   10.244.3.38   node4   <none>           <none>
sise     0/1     ContainerCreating   0          65s     <none>        node4   <none>           <none>
[root@node1 ~]# kubectl get pods --output=wide
NAME     READY   STATUS              RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
monkey   0/1     ImagePullBackOff    0          3m25s   10.244.3.38   node4   <none>           <none>
sise     0/1     ContainerCreating   0          66s     <none>        node4   <none>           <none>
[root@node1 ~]# kubectl get pods --output=wide
NAME     READY   STATUS              RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
monkey   0/1     ImagePullBackOff    0          3m27s   10.244.3.38   node4   <none>           <none>
sise     0/1     ContainerCreating   0          68s     <none>        node4   <none>           <none>
[root@node1 ~]# kubectl get pods --output=wide
NAME     READY   STATUS              RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
monkey   0/1     ImagePullBackOff    0          3m29s   10.244.3.38   node4   <none>           <none>
sise     0/1     ContainerCreating   0          70s     <none>        node4   <none>           <none>
[root@node1 ~]# kubectl get pods --output=wide
NAME     READY   STATUS             RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
monkey   0/1     ImagePullBackOff   0          3m31s   10.244.3.38   node4   <none>           <none>
sise     1/1     Running            0          72s     10.244.3.39   node4   <none>           <none>
[root@node1 ~]# kubectl get pods --output=wide
NAME     READY   STATUS             RESTARTS   AGE     IP            NODE    NOMINATED NODE   READINESS GATES
monkey   0/1     ImagePullBackOff   0          3m32s   10.244.3.38   node4   <none>           <none>
sise     1/1     Running            0          73s     10.244.3.39   node4   <none>           <none>
[root@node1 ~]# kubectl exec sise -t -- curl -s localhost:9876/info
{"host": "localhost:9876", "version": "0.5.0", "from": "127.0.0.1"}[root@node1 ~]# kubectl describe pod sise | grep IP:
Annotations:  cni.projectcalico.org/podIP: 10.244.3.39/32
IP:           10.244.3.39
  IP:  10.244.3.39
[root@node1 ~]# export K8S_API="https://$(kubectl config get-clusters | tail -n 1)"
[root@node1 ~]# export API_TOKEN="$(kubectl config view -o jsonpath={.users[-1].user.token})"
[root@node1 ~]# export NAMESPACE="default"
[root@node1 ~]# export PODNAME="sise"
[root@node1 ~]# curl -s -k -H"Authorization: Bearer $API_TOKEN" \
> $K8S_API/api/v1/namespaces/$NAMESPACE/pods/$PODNAME/proxy/info
[root@node1 ~]# curl -s localhost:9876/info
[root@node1 ~]# curl -s localhost:9876/info
[root@node1 ~]# kubectl config view
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: DATA+OMITTED
    server: https://0.0.0.0:443
  name: kubernetes
contexts:
- context:
    cluster: kubernetes
    user: kubernetes-admin
  name: kubernetes-admin@kubernetes
current-context: kubernetes-admin@kubernetes
kind: Config
preferences: {}
users:
- name: kubernetes-admin
  user:
    client-certificate-data: REDACTED
    client-key-data: REDACTED
[root@node1 ~]# kubectl api-resources
NAME                              SHORTNAMES   APIVERSION                             NAMESPACED   KIND
bindings                                       v1                                     true         Binding
componentstatuses                 cs           v1                                     false        ComponentStatus
configmaps                        cm           v1                                     true         ConfigMap
endpoints                         ep           v1                                     true         Endpoints
events                            ev           v1                                     true         Event
limitranges                       limits       v1                                     true         LimitRange
namespaces                        ns           v1                                     false        Namespace
nodes                             no           v1                                     false        Node
persistentvolumeclaims            pvc          v1                                     true         PersistentVolumeClaim
persistentvolumes                 pv           v1                                     false        PersistentVolume
pods                              po           v1                                     true         Pod
podtemplates                                   v1                                     true         PodTemplate
replicationcontrollers            rc           v1                                     true         ReplicationController
resourcequotas                    quota        v1                                     true         ResourceQuota
secrets                                        v1                                     true         Secret
serviceaccounts                   sa           v1                                     true         ServiceAccount
services                          svc          v1                                     true         Service
mutatingwebhookconfigurations                  admissionregistration.k8s.io/v1        false        MutatingWebhookConfiguration
validatingwebhookconfigurations                admissionregistration.k8s.io/v1        false        ValidatingWebhookConfiguration
customresourcedefinitions         crd,crds     apiextensions.k8s.io/v1                false        CustomResourceDefinition
apiservices                                    apiregistration.k8s.io/v1              false        APIService
controllerrevisions                            apps/v1                                true         ControllerRevision
daemonsets                        ds           apps/v1                                true         DaemonSet
deployments                       deploy       apps/v1                                true         Deployment
replicasets                       rs           apps/v1                                true         ReplicaSet
statefulsets                      sts          apps/v1                                true         StatefulSet
tokenreviews                                   authentication.k8s.io/v1               false        TokenReview
localsubjectaccessreviews                      authorization.k8s.io/v1                true         LocalSubjectAccessReview
selfsubjectaccessreviews                       authorization.k8s.io/v1                false        SelfSubjectAccessReview
selfsubjectrulesreviews                        authorization.k8s.io/v1                false        SelfSubjectRulesReview
subjectaccessreviews                           authorization.k8s.io/v1                false        SubjectAccessReview
horizontalpodautoscalers          hpa          autoscaling/v1                         true         HorizontalPodAutoscaler
cronjobs                          cj           batch/v1beta1                          true         CronJob
jobs                                           batch/v1                               true         Job
certificatesigningrequests        csr          certificates.k8s.io/v1                 false        CertificateSigningRequest
leases                                         coordination.k8s.io/v1                 true         Lease
bgpconfigurations                              crd.projectcalico.org/v1               false        BGPConfiguration
bgppeers                                       crd.projectcalico.org/v1               false        BGPPeer
blockaffinities                                crd.projectcalico.org/v1               false        BlockAffinity
clusterinformations                            crd.projectcalico.org/v1               false        ClusterInformation
felixconfigurations                            crd.projectcalico.org/v1               false        FelixConfiguration
globalnetworkpolicies                          crd.projectcalico.org/v1               false        GlobalNetworkPolicy
globalnetworksets                              crd.projectcalico.org/v1               false        GlobalNetworkSet
hostendpoints                                  crd.projectcalico.org/v1               false        HostEndpoint
ipamblocks                                     crd.projectcalico.org/v1               false        IPAMBlock
ipamconfigs                                    crd.projectcalico.org/v1               false        IPAMConfig
ipamhandles                                    crd.projectcalico.org/v1               false        IPAMHandle
ippools                                        crd.projectcalico.org/v1               false        IPPool
networkpolicies                                crd.projectcalico.org/v1               true         NetworkPolicy
networksets                                    crd.projectcalico.org/v1               true         NetworkSet
endpointslices                                 discovery.k8s.io/v1beta1               true         EndpointSlice
events                            ev           events.k8s.io/v1                       true         Event
ingresses                         ing          extensions/v1beta1                     true         Ingress
flowschemas                                    flowcontrol.apiserver.k8s.io/v1beta1   false        FlowSchema
prioritylevelconfigurations                    flowcontrol.apiserver.k8s.io/v1beta1   false        PriorityLevelConfiguration
ingressclasses                                 networking.k8s.io/v1                   false        IngressClass
ingresses                         ing          networking.k8s.io/v1                   true         Ingress
networkpolicies                   netpol       networking.k8s.io/v1                   true         NetworkPolicy
runtimeclasses                                 node.k8s.io/v1                         false        RuntimeClass
poddisruptionbudgets              pdb          policy/v1beta1                         true         PodDisruptionBudget
podsecuritypolicies               psp          policy/v1beta1                         false        PodSecurityPolicy
clusterrolebindings                            rbac.authorization.k8s.io/v1           false        ClusterRoleBinding
clusterroles                                   rbac.authorization.k8s.io/v1           false        ClusterRole
rolebindings                                   rbac.authorization.k8s.io/v1           true         RoleBinding
roles                                          rbac.authorization.k8s.io/v1           true         Role
priorityclasses                   pc           scheduling.k8s.io/v1                   false        PriorityClass
csidrivers                                     storage.k8s.io/v1                      false        CSIDriver
csinodes                                       storage.k8s.io/v1                      false        CSINode
storageclasses                    sc           storage.k8s.io/v1                      false        StorageClass
volumeattachments                              storage.k8s.io/v1                      false        VolumeAttachment


[root@node1 ~]# kubectl get all --all-namespaces
NAMESPACE              NAME                                             READY   STATUS             RESTARTS   AGE
default                pod/monkey                                       0/1     ImagePullBackOff   0          8m25s
default                pod/sise                                         1/1     Running            0          6m6s
kube-system            pod/canal-4dkzb                                  2/2     Running            8          2d23h
kube-system            pod/canal-bn8zz                                  2/2     Running            18         2d23h
kube-system            pod/canal-l82hw                                  2/2     Running            10         2d23h
kube-system            pod/canal-lvttz                                  2/2     Running            16         2d23h
kube-system            pod/coredns-74ff55c5b-kn4z4                      1/1     Running            4          2d23h
kube-system            pod/coredns-74ff55c5b-wgbmp                      1/1     Running            4          2d23h
kube-system            pod/kube-apiserver-node1                         1/1     Running            15         2d23h
kube-system            pod/kube-apiserver-node2                         1/1     Running            4          2d23h
kube-system            pod/kube-controller-manager-node1                1/1     Running            4          2d23h
kube-system            pod/kube-controller-manager-node2                1/1     Running            4          2d23h
kube-system            pod/kube-proxy-4zgmh                             1/1     Running            4          2d23h
kube-system            pod/kube-proxy-btpvx                             1/1     Running            4          2d23h
kube-system            pod/kube-proxy-hpt2f                             1/1     Running            4          2d23h
kube-system            pod/kube-proxy-ts42g                             1/1     Running            4          2d23h
kube-system            pod/kube-router-6pctn                            1/1     Running            2          24h
kube-system            pod/kube-router-cmtjc                            1/1     Running            2          24h
kube-system            pod/kube-router-l2xsc                            1/1     Running            2          24h
kube-system            pod/kube-router-n5qtp                            1/1     Running            2          24h
kube-system            pod/kube-scheduler-node1                         1/1     Running            4          2d23h
kube-system            pod/kube-scheduler-node2                         1/1     Running            4          2d23h
kube-system            pod/weave-net-8ktq2                              2/2     Running            7          4h14m
kube-system            pod/weave-net-98bdh                              2/2     Running            1          4h14m
kube-system            pod/weave-net-t72gn                              2/2     Running            6          4h14m
kube-system            pod/weave-net-z6gpm                              2/2     Running            1          4h14m
kubernetes-dashboard   pod/dashboard-metrics-scraper-7445d59dfd-sscrb   1/1     Running            2          25h
kubernetes-dashboard   pod/kubernetes-dashboard-7689bdc94d-7w4wn        1/1     Running            7          2d23h
metallb-system         pod/controller-fb659dc8-485p5                    1/1     Running            0          20m
metallb-system         pod/speaker-krj65                                1/1     Running            0          20m
metallb-system         pod/speaker-kzgxl                                1/1     Running            0          20m
metallb-system         pod/speaker-wsfdr                                1/1     Running            0          20m
metallb-system         pod/speaker-z74xp                                1/1     Running            0          20m

NAMESPACE              NAME                                TYPE           CLUSTER-IP       EXTERNAL-IP     PORT(S)                  AGE
default                service/frontend                    LoadBalancer   10.107.141.22    172.31.71.223   80:30859/TCP             4h54m
default                service/hello-kubernetes            LoadBalancer   10.96.248.85     172.31.71.224   80:32368/TCP             25h
default                service/hello-kubernetes-custom     LoadBalancer   10.103.111.165   172.31.71.225   80:30120/TCP             25h
default                service/kubernetes                  LoadBalancer   10.96.0.1        172.31.71.226   443:30011/TCP            2d23h
default                service/lb-service                  LoadBalancer   10.105.119.121   172.10.2.10     8080:32149/TCP           27m
default                service/mongo                       LoadBalancer   10.104.201.97    172.31.71.222   27017:31823/TCP          4h56m
default                service/mysql                       LoadBalancer   10.108.144.77    172.31.71.221   3306:30154/TCP           25h
default                service/test-service                LoadBalancer   10.110.184.51    <pending>       8080:30811/TCP           29m
kube-system            service/kube-dns                    ClusterIP      10.96.0.10       <none>          53/UDP,53/TCP,9153/TCP   2d23h
kubernetes-dashboard   service/dashboard-metrics-scraper   ClusterIP      10.105.102.14    <none>          8000/TCP                 2d23h
kubernetes-dashboard   service/kubernetes-dashboard        ClusterIP      10.98.156.89     <none>          80/TCP                   2d23h

NAMESPACE        NAME                         DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR                 AGE
kube-system      daemonset.apps/canal         4         4         4       4            4           beta.kubernetes.io/os=linux   2d23h
kube-system      daemonset.apps/kube-proxy    4         4         4       4            4           kubernetes.io/os=linux        2d23h
kube-system      daemonset.apps/kube-router   4         4         4       4            4           <none>                        24h
kube-system      daemonset.apps/weave-net     4         4         4       4            4           <none>                        4h14m
metallb-system   daemonset.apps/speaker       4         4         4       4            4           beta.kubernetes.io/os=linux   20m

NAMESPACE              NAME                                        READY   UP-TO-DATE   AVAILABLE   AGE
kube-system            deployment.apps/coredns                     2/2     2            2           2d23h
kubernetes-dashboard   deployment.apps/dashboard-metrics-scraper   1/1     1            1           2d23h
kubernetes-dashboard   deployment.apps/kubernetes-dashboard        1/1     1            1           2d23h
metallb-system         deployment.apps/controller                  1/1     1            1           20m

NAMESPACE              NAME                                                   DESIRED   CURRENT   READY   AGE
kube-system            replicaset.apps/coredns-74ff55c5b                      2         2         2       2d23h
kubernetes-dashboard   replicaset.apps/dashboard-metrics-scraper-7445d59dfd   1         1         1       2d23h
kubernetes-dashboard   replicaset.apps/kubernetes-dashboard-7689bdc94d        1         1         1       2d23h
metallb-system         replicaset.apps/controller-fb659dc8                    1         1         1       20m
[root@node1 ~]#

[root@node1 ~]# kubectl get ev
LAST SEEN   TYPE      REASON                         OBJECT                                          MESSAGE
22m         Normal    Killing                        pod/frontend-848d88c7c-cw5l7                    Stopping container guestbook
22m         Warning   FailedKillPod                  pod/frontend-848d88c7c-cw5l7                    error killing pod: failed to "KillPodSandbox" for "6268587e-3bb0-4166-aad7-4f5c42f5c6c7" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"frontend-848d88c7c-cw5l7_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
22m         Normal    Killing                        pod/frontend-848d88c7c-rfvct                    Stopping container guestbook
30m         Warning   NodeNotReady                   pod/frontend-848d88c7c-rjg67                    Node is not ready
28m         Normal    TaintManagerEviction           pod/frontend-848d88c7c-rjg67                    Cancelling deletion of Pod default/frontend-848d88c7c-rjg67
22m         Normal    Killing                        pod/frontend-848d88c7c-rjg67                    Stopping container guestbook
3h45m       Normal    Type                           service/frontend                                ClusterIP -> LoadBalancer
12m         Normal    Killing                        pod/hello-kubernetes-767d49787b-7bxcg           Stopping container hello-kubernetes
11m         Warning   FailedKillPod                  pod/hello-kubernetes-767d49787b-7bxcg           error killing pod: failed to "KillPodSandbox" for "45614ad0-f924-4b7c-9f02-d251aaab4e78" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-kubernetes-767d49787b-7bxcg_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
12m         Normal    Scheduled                      pod/hello-kubernetes-767d49787b-8g28p           Successfully assigned default/hello-kubernetes-767d49787b-8g28p to node4
12m         Normal    Pulled                         pod/hello-kubernetes-767d49787b-8g28p           Container image "paulbouwer/hello-kubernetes:1.8" already present on machine
12m         Normal    Created                        pod/hello-kubernetes-767d49787b-8g28p           Created container hello-kubernetes
11m         Normal    Started                        pod/hello-kubernetes-767d49787b-8g28p           Started container hello-kubernetes
11m         Normal    Killing                        pod/hello-kubernetes-767d49787b-8g28p           Stopping container hello-kubernetes
12m         Normal    Scheduled                      pod/hello-kubernetes-767d49787b-fdbzz           Successfully assigned default/hello-kubernetes-767d49787b-fdbzz to node3
12m         Normal    Pulled                         pod/hello-kubernetes-767d49787b-fdbzz           Container image "paulbouwer/hello-kubernetes:1.8" already present on machine
12m         Normal    Created                        pod/hello-kubernetes-767d49787b-fdbzz           Created container hello-kubernetes
11m         Normal    Started                        pod/hello-kubernetes-767d49787b-fdbzz           Started container hello-kubernetes
11m         Normal    Killing                        pod/hello-kubernetes-767d49787b-fdbzz           Stopping container hello-kubernetes
11m         Warning   FailedKillPod                  pod/hello-kubernetes-767d49787b-fdbzz           error killing pod: failed to "KillPodSandbox" for "a71f0376-078f-4a13-9a50-c0988b77d526" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-kubernetes-767d49787b-fdbzz_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
28m         Normal    TaintManagerEviction           pod/hello-kubernetes-767d49787b-k5lp9           Cancelling deletion of Pod default/hello-kubernetes-767d49787b-k5lp9
30m         Warning   NodeNotReady                   pod/hello-kubernetes-767d49787b-k5lp9           Node is not ready
12m         Normal    Killing                        pod/hello-kubernetes-767d49787b-k5lp9           Stopping container hello-kubernetes
12m         Warning   FailedKillPod                  pod/hello-kubernetes-767d49787b-k5lp9           error killing pod: failed to "KillPodSandbox" for "00adac03-caf8-419a-a305-31038e45be8d" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-kubernetes-767d49787b-k5lp9_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
12m         Normal    Killing                        pod/hello-kubernetes-767d49787b-t54q9           Stopping container hello-kubernetes
12m         Normal    Scheduled                      pod/hello-kubernetes-767d49787b-xsz6v           Successfully assigned default/hello-kubernetes-767d49787b-xsz6v to node3
11m         Warning   FailedCreatePodSandBox         pod/hello-kubernetes-767d49787b-xsz6v           Failed to create pod sandbox: rpc error: code = Unknown desc = failed to set up sandbox container "f0c16dc34735242ec0b183f05d0708b8c34c8d63e88f482d95f2754dd13aee39" network for pod "hello-kubernetes-767d49787b-xsz6v": networkPlugin cni failed to set up pod "hello-kubernetes-767d49787b-xsz6v_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused
11m         Normal    SandboxChanged                 pod/hello-kubernetes-767d49787b-xsz6v           Pod sandbox changed, it will be killed and re-created.
11m         Warning   FailedCreatePodSandBox         pod/hello-kubernetes-767d49787b-xsz6v           Failed to create pod sandbox: rpc error: code = Unknown desc = [failed to set up sandbox container "86160cf3353859d79062e10fe314da74eacb74d1fb17f823a5739c44f39c3326" network for pod "hello-kubernetes-767d49787b-xsz6v": networkPlugin cni failed to set up pod "hello-kubernetes-767d49787b-xsz6v_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused, failed to clean up sandbox container "86160cf3353859d79062e10fe314da74eacb74d1fb17f823a5739c44f39c3326" network for pod "hello-kubernetes-767d49787b-xsz6v": networkPlugin cni failed to teardown pod "hello-kubernetes-767d49787b-xsz6v_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused]
11m         Normal    Pulled                         pod/hello-kubernetes-767d49787b-xsz6v           Container image "paulbouwer/hello-kubernetes:1.8" already present on machine
11m         Normal    Created                        pod/hello-kubernetes-767d49787b-xsz6v           Created container hello-kubernetes
11m         Normal    Started                        pod/hello-kubernetes-767d49787b-xsz6v           Started container hello-kubernetes
11m         Normal    Killing                        pod/hello-kubernetes-767d49787b-xsz6v           Stopping container hello-kubernetes
12m         Normal    SuccessfulCreate               replicaset/hello-kubernetes-767d49787b          Created pod: hello-kubernetes-767d49787b-8g28p
12m         Normal    SuccessfulCreate               replicaset/hello-kubernetes-767d49787b          Created pod: hello-kubernetes-767d49787b-xsz6v
12m         Normal    SuccessfulCreate               replicaset/hello-kubernetes-767d49787b          Created pod: hello-kubernetes-767d49787b-fdbzz
12m         Normal    Scheduled                      pod/hello-kubernetes-custom-5bdd5fd984-d8hvn    Successfully assigned default/hello-kubernetes-custom-5bdd5fd984-d8hvn to node3
12m         Normal    Pulled                         pod/hello-kubernetes-custom-5bdd5fd984-d8hvn    Container image "paulbouwer/hello-kubernetes:1.8" already present on machine
12m         Normal    Created                        pod/hello-kubernetes-custom-5bdd5fd984-d8hvn    Created container hello-kubernetes
11m         Normal    Started                        pod/hello-kubernetes-custom-5bdd5fd984-d8hvn    Started container hello-kubernetes
11m         Normal    Killing                        pod/hello-kubernetes-custom-5bdd5fd984-d8hvn    Stopping container hello-kubernetes
11m         Warning   FailedKillPod                  pod/hello-kubernetes-custom-5bdd5fd984-d8hvn    error killing pod: failed to "KillPodSandbox" for "56660e77-fe4e-413c-8eb2-30ce9bca7ec7" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-kubernetes-custom-5bdd5fd984-d8hvn_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
12m         Normal    Killing                        pod/hello-kubernetes-custom-5bdd5fd984-l92mr    Stopping container hello-kubernetes
12m         Warning   FailedKillPod                  pod/hello-kubernetes-custom-5bdd5fd984-l92mr    error killing pod: failed to "KillPodSandbox" for "12ba4680-718c-413c-b455-87b32001c9ab" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-kubernetes-custom-5bdd5fd984-l92mr_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
12m         Normal    Killing                        pod/hello-kubernetes-custom-5bdd5fd984-lfnpr    Stopping container hello-kubernetes
28m         Normal    TaintManagerEviction           pod/hello-kubernetes-custom-5bdd5fd984-rjg8x    Cancelling deletion of Pod default/hello-kubernetes-custom-5bdd5fd984-rjg8x
30m         Warning   NodeNotReady                   pod/hello-kubernetes-custom-5bdd5fd984-rjg8x    Node is not ready
12m         Normal    Killing                        pod/hello-kubernetes-custom-5bdd5fd984-rjg8x    Stopping container hello-kubernetes
12m         Warning   FailedKillPod                  pod/hello-kubernetes-custom-5bdd5fd984-rjg8x    error killing pod: failed to "KillPodSandbox" for "8a8b04e2-5288-4967-9d94-050b16511854" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-kubernetes-custom-5bdd5fd984-rjg8x_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
12m         Normal    Scheduled                      pod/hello-kubernetes-custom-5bdd5fd984-sdmpm    Successfully assigned default/hello-kubernetes-custom-5bdd5fd984-sdmpm to node4
12m         Normal    Pulled                         pod/hello-kubernetes-custom-5bdd5fd984-sdmpm    Container image "paulbouwer/hello-kubernetes:1.8" already present on machine
12m         Normal    Created                        pod/hello-kubernetes-custom-5bdd5fd984-sdmpm    Created container hello-kubernetes
12m         Normal    Started                        pod/hello-kubernetes-custom-5bdd5fd984-sdmpm    Started container hello-kubernetes
11m         Normal    Killing                        pod/hello-kubernetes-custom-5bdd5fd984-sdmpm    Stopping container hello-kubernetes
11m         Warning   FailedKillPod                  pod/hello-kubernetes-custom-5bdd5fd984-sdmpm    error killing pod: failed to "KillPodSandbox" for "10cf7d32-9edb-49a6-b6b3-d944fed9922e" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-kubernetes-custom-5bdd5fd984-sdmpm_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
12m         Normal    Scheduled                      pod/hello-kubernetes-custom-5bdd5fd984-tgdpg    Successfully assigned default/hello-kubernetes-custom-5bdd5fd984-tgdpg to node4
12m         Normal    Pulled                         pod/hello-kubernetes-custom-5bdd5fd984-tgdpg    Container image "paulbouwer/hello-kubernetes:1.8" already present on machine
12m         Normal    Created                        pod/hello-kubernetes-custom-5bdd5fd984-tgdpg    Created container hello-kubernetes
11m         Normal    Started                        pod/hello-kubernetes-custom-5bdd5fd984-tgdpg    Started container hello-kubernetes
11m         Normal    Killing                        pod/hello-kubernetes-custom-5bdd5fd984-tgdpg    Stopping container hello-kubernetes
11m         Warning   FailedKillPod                  pod/hello-kubernetes-custom-5bdd5fd984-tgdpg    error killing pod: failed to "KillPodSandbox" for "1aebde7d-65aa-459a-a193-077e44baea42" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-kubernetes-custom-5bdd5fd984-tgdpg_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
12m         Normal    SuccessfulCreate               replicaset/hello-kubernetes-custom-5bdd5fd984   Created pod: hello-kubernetes-custom-5bdd5fd984-sdmpm
12m         Normal    SuccessfulCreate               replicaset/hello-kubernetes-custom-5bdd5fd984   Created pod: hello-kubernetes-custom-5bdd5fd984-d8hvn
12m         Normal    SuccessfulCreate               replicaset/hello-kubernetes-custom-5bdd5fd984   Created pod: hello-kubernetes-custom-5bdd5fd984-tgdpg
3h44m       Normal    ExternalIP                     service/hello-kubernetes-custom                 Count: 0 -> 1
12m         Warning   FailedToUpdateEndpointSlices   service/hello-kubernetes-custom                 Error updating Endpoint Slices for Service default/hello-kubernetes-custom: failed to update hello-kubernetes-custom-zw8qx EndpointSlice for Service default/hello-kubernetes-custom: Operation cannot be fulfilled on endpointslices.discovery.k8s.io "hello-kubernetes-custom-zw8qx": the object has been modified; please apply your changes to the latest version and try again
11m         Warning   FailedToUpdateEndpoint         endpoints/hello-kubernetes-custom               Failed to update endpoint default/hello-kubernetes-custom: Operation cannot be fulfilled on endpoints "hello-kubernetes-custom": the object has been modified; please apply your changes to the latest version and try again
3h44m       Normal    ExternalIP                     service/hello-kubernetes                        Count: 0 -> 1
12m         Normal    Scheduled                      pod/hello-world-6df5659cb7-6r9km                Successfully assigned default/hello-world-6df5659cb7-6r9km to node4
12m         Normal    Pulled                         pod/hello-world-6df5659cb7-6r9km                Container image "gcr.io/google-samples/node-hello:1.0" already present on machine
11m         Normal    Created                        pod/hello-world-6df5659cb7-6r9km                Created container hello-world
11m         Normal    Started                        pod/hello-world-6df5659cb7-6r9km                Started container hello-world
11m         Normal    Killing                        pod/hello-world-6df5659cb7-6r9km                Stopping container hello-world
10m         Warning   FailedKillPod                  pod/hello-world-6df5659cb7-6r9km                error killing pod: failed to "KillPodSandbox" for "3cb897a6-decc-436a-84b5-ca980903edbb" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-world-6df5659cb7-6r9km_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
12m         Normal    Scheduled                      pod/hello-world-6df5659cb7-96xl5                Successfully assigned default/hello-world-6df5659cb7-96xl5 to node3
12m         Normal    Pulled                         pod/hello-world-6df5659cb7-96xl5                Container image "gcr.io/google-samples/node-hello:1.0" already present on machine
12m         Normal    Created                        pod/hello-world-6df5659cb7-96xl5                Created container hello-world
11m         Normal    Started                        pod/hello-world-6df5659cb7-96xl5                Started container hello-world
11m         Normal    Killing                        pod/hello-world-6df5659cb7-96xl5                Stopping container hello-world
31m         Normal    Scheduled                      pod/hello-world-6df5659cb7-9vch7                Successfully assigned default/hello-world-6df5659cb7-9vch7 to node4
31m         Warning   FailedCreatePodSandBox         pod/hello-world-6df5659cb7-9vch7                Failed to create pod sandbox: rpc error: code = Unknown desc = failed to set up sandbox container "62e03a37827cbdc1797ed79266cf8a96913b784f3d1fc9a3ce17c73b222f7160" network for pod "hello-world-6df5659cb7-9vch7": networkPlugin cni failed to set up pod "hello-world-6df5659cb7-9vch7_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused
31m         Normal    SandboxChanged                 pod/hello-world-6df5659cb7-9vch7                Pod sandbox changed, it will be killed and re-created.
31m         Normal    Pulling                        pod/hello-world-6df5659cb7-9vch7                Pulling image "gcr.io/google-samples/node-hello:1.0"
29m         Normal    Pulled                         pod/hello-world-6df5659cb7-9vch7                Successfully pulled image "gcr.io/google-samples/node-hello:1.0" in 1m33.912783515s
29m         Normal    Created                        pod/hello-world-6df5659cb7-9vch7                Created container hello-world
29m         Normal    Started                        pod/hello-world-6df5659cb7-9vch7                Started container hello-world
12m         Normal    Killing                        pod/hello-world-6df5659cb7-9vch7                Stopping container hello-world
11m         Warning   FailedKillPod                  pod/hello-world-6df5659cb7-9vch7                error killing pod: failed to "KillPodSandbox" for "1eab9ef9-8b80-4910-8982-1220d150a568" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-world-6df5659cb7-9vch7_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
12m         Normal    Scheduled                      pod/hello-world-6df5659cb7-gcbv4                Successfully assigned default/hello-world-6df5659cb7-gcbv4 to node4
11m         Warning   FailedCreatePodSandBox         pod/hello-world-6df5659cb7-gcbv4                Failed to create pod sandbox: rpc error: code = Unknown desc = failed to set up sandbox container "41ac73cc9c0d6368eee3a1108105e368eab2fc6db046bc1ee7f0c2a2e7ccc26c" network for pod "hello-world-6df5659cb7-gcbv4": networkPlugin cni failed to set up pod "hello-world-6df5659cb7-gcbv4_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused
11m         Normal    SandboxChanged                 pod/hello-world-6df5659cb7-gcbv4                Pod sandbox changed, it will be killed and re-created.
11m         Normal    Pulled                         pod/hello-world-6df5659cb7-gcbv4                Container image "gcr.io/google-samples/node-hello:1.0" already present on machine
11m         Normal    Created                        pod/hello-world-6df5659cb7-gcbv4                Created container hello-world
11m         Normal    Started                        pod/hello-world-6df5659cb7-gcbv4                Started container hello-world
11m         Normal    Killing                        pod/hello-world-6df5659cb7-gcbv4                Stopping container hello-world
10m         Warning   FailedKillPod                  pod/hello-world-6df5659cb7-gcbv4                error killing pod: failed to "KillPodSandbox" for "28da095a-19b0-4278-885a-37449c07c051" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"_\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
31m         Normal    Scheduled                      pod/hello-world-6df5659cb7-h4rgw                Successfully assigned default/hello-world-6df5659cb7-h4rgw to node3
28m         Warning   FailedCreatePodSandBox         pod/hello-world-6df5659cb7-h4rgw                Failed to create pod sandbox: rpc error: code = Unknown desc = failed to start sandbox container for pod "hello-world-6df5659cb7-h4rgw": operation timeout: context deadline exceeded
28m         Normal    SandboxChanged                 pod/hello-world-6df5659cb7-h4rgw                Pod sandbox changed, it will be killed and re-created.
28m         Normal    Pulling                        pod/hello-world-6df5659cb7-h4rgw                Pulling image "gcr.io/google-samples/node-hello:1.0"
28m         Normal    TaintManagerEviction           pod/hello-world-6df5659cb7-h4rgw                Cancelling deletion of Pod default/hello-world-6df5659cb7-h4rgw
26m         Normal    Pulled                         pod/hello-world-6df5659cb7-h4rgw                Successfully pulled image "gcr.io/google-samples/node-hello:1.0" in 1m31.454128446s
26m         Normal    Created                        pod/hello-world-6df5659cb7-h4rgw                Created container hello-world
26m         Normal    Started                        pod/hello-world-6df5659cb7-h4rgw                Started container hello-world
12m         Normal    Killing                        pod/hello-world-6df5659cb7-h4rgw                Stopping container hello-world
11m         Warning   FailedKillPod                  pod/hello-world-6df5659cb7-h4rgw                error killing pod: failed to "KillPodSandbox" for "ba7f7b21-0971-43c9-8c0c-81be0ada3521" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-world-6df5659cb7-h4rgw_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
31m         Normal    Scheduled                      pod/hello-world-6df5659cb7-h6w92                Successfully assigned default/hello-world-6df5659cb7-h6w92 to node3
28m         Warning   FailedCreatePodSandBox         pod/hello-world-6df5659cb7-h6w92                Failed to create pod sandbox: rpc error: code = Unknown desc = failed to start sandbox container for pod "hello-world-6df5659cb7-h6w92": operation timeout: context deadline exceeded
28m         Normal    SandboxChanged                 pod/hello-world-6df5659cb7-h6w92                Pod sandbox changed, it will be killed and re-created.
28m         Warning   FailedCreatePodSandBox         pod/hello-world-6df5659cb7-h6w92                Failed to create pod sandbox: rpc error: code = Unknown desc = [failed to set up sandbox container "193c2e5e4b36188272c90c96d6ab508d74d16b0007b694d2e66f834a7888b14b" network for pod "hello-world-6df5659cb7-h6w92": networkPlugin cni failed to set up pod "hello-world-6df5659cb7-h6w92_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused, failed to clean up sandbox container "193c2e5e4b36188272c90c96d6ab508d74d16b0007b694d2e66f834a7888b14b" network for pod "hello-world-6df5659cb7-h6w92": networkPlugin cni failed to teardown pod "hello-world-6df5659cb7-h6w92_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused]
28m         Normal    TaintManagerEviction           pod/hello-world-6df5659cb7-h6w92                Cancelling deletion of Pod default/hello-world-6df5659cb7-h6w92
28m         Normal    Pulling                        pod/hello-world-6df5659cb7-h6w92                Pulling image "gcr.io/google-samples/node-hello:1.0"
26m         Normal    Pulled                         pod/hello-world-6df5659cb7-h6w92                Successfully pulled image "gcr.io/google-samples/node-hello:1.0" in 1m30.472837801s
26m         Normal    Created                        pod/hello-world-6df5659cb7-h6w92                Created container hello-world
26m         Normal    Started                        pod/hello-world-6df5659cb7-h6w92                Started container hello-world
12m         Normal    Killing                        pod/hello-world-6df5659cb7-h6w92                Stopping container hello-world
11m         Warning   FailedKillPod                  pod/hello-world-6df5659cb7-h6w92                error killing pod: failed to "KillPodSandbox" for "94414349-a5ea-4d39-a9c8-0363b50915ea" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-world-6df5659cb7-h6w92_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
12m         Normal    Scheduled                      pod/hello-world-6df5659cb7-hpfsl                Successfully assigned default/hello-world-6df5659cb7-hpfsl to node4
12m         Normal    Pulled                         pod/hello-world-6df5659cb7-hpfsl                Container image "gcr.io/google-samples/node-hello:1.0" already present on machine
12m         Normal    Created                        pod/hello-world-6df5659cb7-hpfsl                Created container hello-world
11m         Normal    Started                        pod/hello-world-6df5659cb7-hpfsl                Started container hello-world
11m         Normal    Killing                        pod/hello-world-6df5659cb7-hpfsl                Stopping container hello-world
12m         Normal    Scheduled                      pod/hello-world-6df5659cb7-q74pf                Successfully assigned default/hello-world-6df5659cb7-q74pf to node3
11m         Warning   FailedCreatePodSandBox         pod/hello-world-6df5659cb7-q74pf                Failed to create pod sandbox: rpc error: code = Unknown desc = failed to set up sandbox container "68e8189b8e538789aaae4ec861ac60c478bb02e179edf27404a932fae7443b06" network for pod "hello-world-6df5659cb7-q74pf": networkPlugin cni failed to set up pod "hello-world-6df5659cb7-q74pf_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused
11m         Normal    SandboxChanged                 pod/hello-world-6df5659cb7-q74pf                Pod sandbox changed, it will be killed and re-created.
11m         Warning   FailedCreatePodSandBox         pod/hello-world-6df5659cb7-q74pf                Failed to create pod sandbox: rpc error: code = Unknown desc = [failed to set up sandbox container "40339ae0df49a307277bc1ba0ada41eead834569e9d1d79e2455d710aa0ef136" network for pod "hello-world-6df5659cb7-q74pf": networkPlugin cni failed to set up pod "hello-world-6df5659cb7-q74pf_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused, failed to clean up sandbox container "40339ae0df49a307277bc1ba0ada41eead834569e9d1d79e2455d710aa0ef136" network for pod "hello-world-6df5659cb7-q74pf": networkPlugin cni failed to teardown pod "hello-world-6df5659cb7-q74pf_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused]
11m         Normal    Pulled                         pod/hello-world-6df5659cb7-q74pf                Container image "gcr.io/google-samples/node-hello:1.0" already present on machine
11m         Normal    Created                        pod/hello-world-6df5659cb7-q74pf                Created container hello-world
11m         Normal    Started                        pod/hello-world-6df5659cb7-q74pf                Started container hello-world
11m         Normal    Killing                        pod/hello-world-6df5659cb7-q74pf                Stopping container hello-world
31m         Normal    Scheduled                      pod/hello-world-6df5659cb7-st4xl                Successfully assigned default/hello-world-6df5659cb7-st4xl to node4
31m         Normal    Pulling                        pod/hello-world-6df5659cb7-st4xl                Pulling image "gcr.io/google-samples/node-hello:1.0"
29m         Normal    Pulled                         pod/hello-world-6df5659cb7-st4xl                Successfully pulled image "gcr.io/google-samples/node-hello:1.0" in 1m33.68105386s
29m         Normal    Created                        pod/hello-world-6df5659cb7-st4xl                Created container hello-world
29m         Normal    Started                        pod/hello-world-6df5659cb7-st4xl                Started container hello-world
12m         Normal    Killing                        pod/hello-world-6df5659cb7-st4xl                Stopping container hello-world
11m         Warning   FailedKillPod                  pod/hello-world-6df5659cb7-st4xl                error killing pod: failed to "KillPodSandbox" for "8b6f149f-ef31-4f8a-8d86-408d01bf8b78" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-world-6df5659cb7-st4xl_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
31m         Normal    Scheduled                      pod/hello-world-6df5659cb7-tzp28                Successfully assigned default/hello-world-6df5659cb7-tzp28 to node4
31m         Warning   FailedCreatePodSandBox         pod/hello-world-6df5659cb7-tzp28                Failed to create pod sandbox: rpc error: code = Unknown desc = [failed to set up sandbox container "5bcb3fb3d90cb47646620fd57d3e1ce24806d88b040ac52419e68eec21de4354" network for pod "hello-world-6df5659cb7-tzp28": networkPlugin cni failed to set up pod "hello-world-6df5659cb7-tzp28_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused, failed to clean up sandbox container "5bcb3fb3d90cb47646620fd57d3e1ce24806d88b040ac52419e68eec21de4354" network for pod "hello-world-6df5659cb7-tzp28": networkPlugin cni failed to teardown pod "hello-world-6df5659cb7-tzp28_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused]
30m         Normal    SandboxChanged                 pod/hello-world-6df5659cb7-tzp28                Pod sandbox changed, it will be killed and re-created.
31m         Warning   FailedCreatePodSandBox         pod/hello-world-6df5659cb7-tzp28                Failed to create pod sandbox: rpc error: code = Unknown desc = [failed to set up sandbox container "cda487b04c388efd2987671143e435019e6c57a97359f75a073b60a68ac51af2" network for pod "hello-world-6df5659cb7-tzp28": networkPlugin cni failed to set up pod "hello-world-6df5659cb7-tzp28_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused, failed to clean up sandbox container "cda487b04c388efd2987671143e435019e6c57a97359f75a073b60a68ac51af2" network for pod "hello-world-6df5659cb7-tzp28": networkPlugin cni failed to teardown pod "hello-world-6df5659cb7-tzp28_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused]
31m         Warning   FailedCreatePodSandBox         pod/hello-world-6df5659cb7-tzp28                Failed to create pod sandbox: rpc error: code = Unknown desc = failed to set up sandbox container "dfda27d9f8c2b94544efc660a313b6e4ac33293b350bebbe0f8ef7064e60b47b" network for pod "hello-world-6df5659cb7-tzp28": networkPlugin cni failed to set up pod "hello-world-6df5659cb7-tzp28_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused
30m         Warning   FailedCreatePodSandBox         pod/hello-world-6df5659cb7-tzp28                Failed to create pod sandbox: rpc error: code = Unknown desc = failed to set up sandbox container "d2b7f144b8095399ce26d6baa7742c0c45c80ffefe36dd964dda0959c97c3a59" network for pod "hello-world-6df5659cb7-tzp28": networkPlugin cni failed to set up pod "hello-world-6df5659cb7-tzp28_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused
30m         Warning   FailedCreatePodSandBox         pod/hello-world-6df5659cb7-tzp28                Failed to create pod sandbox: rpc error: code = Unknown desc = failed to set up sandbox container "292f818ba8183c7e843fee5c144848ab2a3d107ca475083ab388b16adc8f143b" network for pod "hello-world-6df5659cb7-tzp28": networkPlugin cni failed to set up pod "hello-world-6df5659cb7-tzp28_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused
30m         Normal    Pulling                        pod/hello-world-6df5659cb7-tzp28                Pulling image "gcr.io/google-samples/node-hello:1.0"
29m         Normal    Pulled                         pod/hello-world-6df5659cb7-tzp28                Successfully pulled image "gcr.io/google-samples/node-hello:1.0" in 53.357557528s
29m         Normal    Created                        pod/hello-world-6df5659cb7-tzp28                Created container hello-world
29m         Normal    Started                        pod/hello-world-6df5659cb7-tzp28                Started container hello-world
12m         Normal    Killing                        pod/hello-world-6df5659cb7-tzp28                Stopping container hello-world
31m         Normal    SuccessfulCreate               replicaset/hello-world-6df5659cb7               Created pod: hello-world-6df5659cb7-st4xl
31m         Normal    SuccessfulCreate               replicaset/hello-world-6df5659cb7               Created pod: hello-world-6df5659cb7-h4rgw
31m         Normal    SuccessfulCreate               replicaset/hello-world-6df5659cb7               Created pod: hello-world-6df5659cb7-tzp28
31m         Normal    SuccessfulCreate               replicaset/hello-world-6df5659cb7               Created pod: hello-world-6df5659cb7-h6w92
31m         Normal    SuccessfulCreate               replicaset/hello-world-6df5659cb7               Created pod: hello-world-6df5659cb7-9vch7
12m         Normal    SuccessfulCreate               replicaset/hello-world-6df5659cb7               Created pod: hello-world-6df5659cb7-6r9km
12m         Normal    SuccessfulCreate               replicaset/hello-world-6df5659cb7               Created pod: hello-world-6df5659cb7-q74pf
12m         Normal    SuccessfulCreate               replicaset/hello-world-6df5659cb7               Created pod: hello-world-6df5659cb7-hpfsl
12m         Normal    SuccessfulCreate               replicaset/hello-world-6df5659cb7               Created pod: hello-world-6df5659cb7-96xl5
12m         Normal    SuccessfulCreate               replicaset/hello-world-6df5659cb7               Created pod: hello-world-6df5659cb7-gcbv4
31m         Normal    ScalingReplicaSet              deployment/hello-world                          Scaled up replica set hello-world-6df5659cb7 to 5
28m         Normal    Scheduled                      pod/hello-world                                 Successfully assigned default/hello-world to node4
28m         Warning   FailedCreatePodSandBox         pod/hello-world                                 Failed to create pod sandbox: rpc error: code = Unknown desc = [failed to set up sandbox container "2edf6b75aa58a077355c163f6930fa2225054f02fcb51c8855a06d7e2937c67a" network for pod "hello-world": networkPlugin cni failed to set up pod "hello-world_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused, failed to clean up sandbox container "2edf6b75aa58a077355c163f6930fa2225054f02fcb51c8855a06d7e2937c67a" network for pod "hello-world": networkPlugin cni failed to teardown pod "hello-world_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused]
28m         Normal    SandboxChanged                 pod/hello-world                                 Pod sandbox changed, it will be killed and re-created.
28m         Warning   FailedCreatePodSandBox         pod/hello-world                                 Failed to create pod sandbox: rpc error: code = Unknown desc = [failed to set up sandbox container "b7e3502ff4568b711d16b34dbfeb784447a5a3577ab8b6f5ada1188d2e1b86f2" network for pod "hello-world": networkPlugin cni failed to set up pod "hello-world_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused, failed to clean up sandbox container "b7e3502ff4568b711d16b34dbfeb784447a5a3577ab8b6f5ada1188d2e1b86f2" network for pod "hello-world": networkPlugin cni failed to teardown pod "hello-world_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused]
28m         Warning   FailedCreatePodSandBox         pod/hello-world                                 Failed to create pod sandbox: rpc error: code = Unknown desc = [failed to set up sandbox container "b689419492213d69666d8c924182fae034f4d06e506c60392c88cf3a3e775e7e" network for pod "hello-world": networkPlugin cni failed to set up pod "hello-world_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused, failed to clean up sandbox container "b689419492213d69666d8c924182fae034f4d06e506c60392c88cf3a3e775e7e" network for pod "hello-world": networkPlugin cni failed to teardown pod "hello-world_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused]
28m         Normal    Pulled                         pod/hello-world                                 Container image "gcr.io/google-samples/node-hello:1.0" already present on machine
28m         Normal    Created                        pod/hello-world                                 Created container hello-world
28m         Normal    Started                        pod/hello-world                                 Started container hello-world
12m         Normal    Killing                        pod/hello-world                                 Stopping container hello-world
11m         Warning   FailedKillPod                  pod/hello-world                                 error killing pod: failed to "KillPodSandbox" for "7f4947d8-6cda-4940-83c9-eb148a15c018" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-world_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
25m         Normal    Scheduled                      pod/hello-world1                                Successfully assigned default/hello-world1 to node3
25m         Normal    Pulled                         pod/hello-world1                                Container image "gcr.io/google-samples/node-hello:1.0" already present on machine
25m         Normal    Created                        pod/hello-world1                                Created container hello-world1
25m         Normal    Started                        pod/hello-world1                                Started container hello-world1
12m         Normal    Killing                        pod/hello-world1                                Stopping container hello-world1
11m         Warning   FailedKillPod                  pod/hello-world1                                error killing pod: failed to "KillPodSandbox" for "52fa110b-39cb-4f98-80b6-3e812d51e79c" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"hello-world1_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
3h44m       Normal    Type                           service/kubernetes                              ClusterIP -> LoadBalancer
28m         Normal    ExternalIP                     service/lb-service                              Count: 0 -> 1
11m         Warning   FailedToUpdateEndpointSlices   service/lb-service                              Error updating Endpoint Slices for Service default/lb-service: failed to update lb-service-dlsln EndpointSlice for Service default/lb-service: Operation cannot be fulfilled on endpointslices.discovery.k8s.io "lb-service-dlsln": the object has been modified; please apply your changes to the latest version and try again
11m         Warning   FailedToUpdateEndpoint         endpoints/lb-service                            Failed to update endpoint default/lb-service: Operation cannot be fulfilled on endpoints "lb-service": the object has been modified; please apply your changes to the latest version and try again
22m         Normal    Killing                        pod/mongo-75f59d57f4-f9wkc                      Stopping container mongo
3h45m       Normal    Type                           service/mongo                                   ClusterIP -> LoadBalancer
9m24s       Normal    Scheduled                      pod/monkey                                      Successfully assigned default/monkey to node4
9m23s       Warning   FailedCreatePodSandBox         pod/monkey                                      Failed to create pod sandbox: rpc error: code = Unknown desc = failed to set up sandbox container "db04da50020752707f60e9ee26845340d0743e76e925ab52f7d09586a5084598" network for pod "monkey": networkPlugin cni failed to set up pod "monkey_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused
8m57s       Normal    SandboxChanged                 pod/monkey                                      Pod sandbox changed, it will be killed and re-created.
7m18s       Normal    Pulling                        pod/monkey                                      Pulling image "monkey"
8m4s        Warning   Failed                         pod/monkey                                      Failed to pull image "monkey": rpc error: code = Unknown desc = Error response from daemon: pull access denied for monkey, repository does not exist or may require 'docker login': denied: requested access to the resource is denied
7m13s       Warning   Failed                         pod/monkey                                      Error: ErrImagePull
7m31s       Normal    BackOff                        pod/monkey                                      Back-off pulling image "monkey"
4m11s       Warning   Failed                         pod/monkey                                      Error: ImagePullBackOff
3h45m       Normal    Type                           service/mysql                                   ClusterIP -> LoadBalancer
28m         Normal    NodeHasSufficientMemory        node/node3                                      Node node3 status is now: NodeHasSufficientMemory
28m         Normal    NodeHasNoDiskPressure          node/node3                                      Node node3 status is now: NodeHasNoDiskPressure
28m         Normal    NodeHasSufficientPID           node/node3                                      Node node3 status is now: NodeHasSufficientPID
28m         Normal    NodeNotReady                   node/node3                                      Node node3 status is now: NodeNotReady
28m         Normal    NodeReady                      node/node3                                      Node node3 status is now: NodeReady
30m         Normal    NodeNotReady                   node/node3                                      Node node3 status is now: NodeNotReady
7m5s        Normal    Scheduled                      pod/sise                                        Successfully assigned default/sise to node4
7m3s        Warning   FailedCreatePodSandBox         pod/sise                                        Failed to create pod sandbox: rpc error: code = Unknown desc = failed to set up sandbox container "6608781d1c3f65d781587f6ffcb95b22bba2e48aa00d04a474cd2e429cd57675" network for pod "sise": networkPlugin cni failed to set up pod "sise_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused
7m          Normal    SandboxChanged                 pod/sise                                        Pod sandbox changed, it will be killed and re-created.
7m1s        Warning   FailedCreatePodSandBox         pod/sise                                        Failed to create pod sandbox: rpc error: code = Unknown desc = [failed to set up sandbox container "ff0dcf49d10d06237ed6931821594f4c310d475cd5171b84a860ac109325b95e" network for pod "sise": networkPlugin cni failed to set up pod "sise_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused, failed to clean up sandbox container "ff0dcf49d10d06237ed6931821594f4c310d475cd5171b84a860ac109325b95e" network for pod "sise": networkPlugin cni failed to teardown pod "sise_default" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused]
6m59s       Normal    Pulling                        pod/sise                                        Pulling image "quay.io/openshiftlabs/simpleservice:0.5.0"
5m57s       Normal    Pulled                         pod/sise                                        Successfully pulled image "quay.io/openshiftlabs/simpleservice:0.5.0" in 1m2.068630207s
5m56s       Normal    Created                        pod/sise                                        Created container sise
5m56s       Normal    Started                        pod/sise                                        Started container sise
12m         Warning   FailedToUpdateEndpointSlices   service/test-service                            Error updating Endpoint Slices for Service default/test-service: failed to update test-service-frs54 EndpointSlice for Service default/test-service: Operation cannot be fulfilled on endpointslices.discovery.k8s.io "test-service-frs54": the object has been modified; please apply your changes to the latest version and try again
11m         Warning   FailedToUpdateEndpoint         endpoints/test-service                          Failed to update endpoint default/test-service: Operation cannot be fulfilled on endpoints "test-service": the object has been modified; please apply your changes to the latest version and try again
22m         Normal    Scheduled                      pod/user-login                                  Successfully assigned default/user-login to node3
22m         Normal    Pulling                        pod/user-login                                  Pulling image "kingslayerr/teamproject:version2"
21m         Normal    Pulled                         pod/user-login                                  Successfully pulled image "kingslayerr/teamproject:version2" in 58.815341362s
21m         Normal    Created                        pod/user-login                                  Created container user-login
21m         Normal    Started                        pod/user-login                                  Started container user-login
12m         Normal    Killing                        pod/user-login                                  Stopping container user-login
30m         Warning   NodeNotReady                   pod/wildfly-rc-mw8jh                            Node is not ready
28m         Normal    TaintManagerEviction           pod/wildfly-rc-mw8jh                            Cancelling deletion of Pod default/wildfly-rc-mw8jh
24m         Normal    Killing                        pod/wildfly-rc-mw8jh                            Stopping container wildfly-rc-pod
30m         Warning   NodeNotReady                   pod/wildfly-rc-qqtdh                            Node is not ready
28m         Normal    TaintManagerEviction           pod/wildfly-rc-qqtdh                            Cancelling deletion of Pod default/wildfly-rc-qqtdh
24m         Normal    Killing                        pod/wildfly-rc-qqtdh                            Stopping container wildfly-rc-pod
24m         Warning   FailedKillPod                  pod/wildfly-rc-qqtdh                            error killing pod: failed to "KillPodSandbox" for "53afe2d9-efef-407f-9186-c74bf93be002" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"wildfly-rc-qqtdh_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
28m         Normal    TaintManagerEviction           pod/wildfly                                     Cancelling deletion of Pod default/wildfly
30m         Warning   NodeNotReady                   pod/wildfly                                     Node is not ready
12m         Normal    Killing                        pod/wildfly                                     Stopping container wildfly
11m         Warning   FailedKillPod                  pod/wildfly                                     error killing pod: failed to "KillPodSandbox" for "db1811ef-6307-4231-80f4-8f3962e2aade" with KillPodSandboxError: "rpc error: code = Unknown desc = networkPlugin cni failed to teardown pod \"wildfly_default\" network: error getting ClusterInformation: Get https://[10.96.0.1]:443/apis/crd.projectcalico.org/v1/clusterinformations/default: dial tcp 10.96.0.1:443: connect: connection refused"
[root@node1 ~]#


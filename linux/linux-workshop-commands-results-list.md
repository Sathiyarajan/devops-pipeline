
# cosmetic commands 

### whoami
### hostname
### ifconfig
### env
### clear

### alias

```
cd /home/sathya/devops-pipeline/
cd

vim alias-devops.sh
alias devops="cd /home/sathya/devops-pipeline/"
esc key + :wq! + enter
source alias-devops.sh
devops
pwd
```

### sudo apt-get install vim

```
[sudo] password for sathya:
Reading package lists... Done
Building dependency tree
Reading state information... Done
sathya@ubuntu:~$
```
### mkdir -p $HOME/shell-test

### wget https://archive.apache.org/dist/hadoop/core/hadoop-2.6.5/hadoop-2.6.5.tar.gz

```
sathya@ubuntu:~/shell-test$ wget https://archive.apache.org/dist/hadoop/core/hadoop-2.6.5/hadoop-2.6.5.tar.gz
--2021-02-21 04:56:18--  https://archive.apache.org/dist/hadoop/core/hadoop-2.6.5/hadoop-2.6.5.tar.gz
Resolving archive.apache.org (archive.apache.org)... 138.201.131.134, 2a01:4f8:172:2ec5::2
Connecting to archive.apache.org (archive.apache.org)|138.201.131.134|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 199635269 (190M) [application/x-gzip]
Saving to: ‘hadoop-2.6.5.tar.gz’

hadoop-2.6.5.tar.gz        100%[=====================================>] 190.39M  8.70MB/s    in 23s

2021-02-21 04:56:41 (8.31 MB/s) - ‘hadoop-2.6.5.tar.gz’ saved [199635269/199635269]
```

### tar -xvf hadoop-2.6.5.tar.gz


### du-hs

```
sathya@ubuntu:~/shell-test$ du -hs
506M    .
sathya@ubuntu:~/shell-test$ du -hs hadoop-2.6.5
315M    hadoop-2.6.5
sathya@ubuntu:~/shell-test$ du -hs hadoop-2.6.5.tar.gz
191M    hadoop-2.6.5.tar.gz
sathya@ubuntu:~/shell-test$
```
### mkdir -p

```
sathya@ubuntu:~/shell-test$ mkdir -p test/test
sathya@ubuntu:~/shell-test$ ls test/
test
sathya@ubuntu:~/shell-test$ mkdir test1/test
mkdir: cannot create directory ‘test1/test’: No such file or directory
sathya@ubuntu:~/shell-test$
```

### cp -r 
```
sathya@ubuntu:~/shell-test$ du -hs
703M    .
sathya@ubuntu:~/shell-test$ mkdir -p test/test
sathya@ubuntu:~/shell-test$ ls test/
test
sathya@ubuntu:~/shell-test$ mkdir test1/test
mkdir: cannot create directory ‘test1/test’: No such file or directory
sathya@ubuntu:~/shell-test$ ls
hadoop-2.6.5  hadoop-2.6.5.tar.gz  hadoop-2.6.5.zip  test
sathya@ubuntu:~/shell-test$ cp hadoop-2.6.5 test/
cp: -r not specified; omitting directory 'hadoop-2.6.5'
sathya@ubuntu:~/shell-test$ cp -r hadoop-2.6.5 test/
sathya@ubuntu:~/shell-test$
```
### mv

```
sathya@ubuntu:~/shell-test$ mv hadoop-2.6.5 test/test/
sathya@ubuntu:~/shell-test$ ls
hadoop-2.6.5.tar.gz  hadoop-2.6.5.zip  test
sathya@ubuntu:~/shell-test$ ls test/test/
hadoop-2.6.5
sathya@ubuntu:~/shell-test$
```
### rm 

```
sathya@ubuntu:~/shell-test$ rm test/hadoop-2.6.5/
rm: cannot remove 'test/hadoop-2.6.5/': Is a directory
sathya@ubuntu:~/shell-test$ ls
hadoop-2.6.5.tar.gz  hadoop-2.6.5.zip  test
sathya@ubuntu:~/shell-test$ rm hadoop-2.6.5.zip
sathya@ubuntu:~/shell-test$ ls
hadoop-2.6.5.tar.gz  test
```
### rm -rf 
```
sathya@ubuntu:~/shell-test$ rm -rf test/hadoop-2.6.5/
sathya@ubuntu:~/shell-test$ ls test/
test
sathya@ubuntu:~/shell-test$
```

# file system permissions - chmod, chown, chgrp

```
R W X
1 2 4

users group others
1+2+4 1+4   0

before:
drwxrwxr-x  3 sathya sathya      4096 Feb 21 05:08 /home/sathya/shell-test/
-rw-rw-r--  1 sathya sathya 199635269 Oct 11  2016  /home/sathya/shell-test/hadoop-2.6.5.tar.gz

```
### directory -> chmod 750 /home/sathya/shell-test

```
drwxr-x---  3 sathya sathya      4096 Feb 21 05:08 /home/sathya/shell-test/
sathya@ubuntu:~$ ll /home/sathya/shell-test/hadoop-2.6.5.tar.gz
-rw-rw-r-- 1 sathya sathya 199635269 Oct 11  2016 /home/sathya/shell-test/hadoop-2.6.5.tar.gz
```
### recursive -> chmod -R 750 /home/sathya/shell-test

```
sathya@ubuntu:~$ ll /home/sathya/shell-test/hadoop-2.6.5.tar.gz
-rwxr-x--- 1 sathya sathya 199635269 Oct 11  2016 /home/sathya/shell-test/hadoop-2.6.5.tar.gz*
sathya@ubuntu:~$
```
### chown , chgrp
YTA

## networking commands - netstat, ping, telnet, top, systemctl

### netstat 

```
sathya@ubuntu:~$ netstat -tupln
(Not all processes could be identified, non-owned process info
 will not be shown, you would have to be root to see it all.)
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 127.0.0.53:53           0.0.0.0:*               LISTEN      -
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:3306          0.0.0.0:*               LISTEN      -
tcp        0      0 0.0.0.0:111             0.0.0.0:*               LISTEN      -
tcp6       0      0 :::22                   :::*                    LISTEN      -
tcp6       0      0 ::1:631                 :::*                    LISTEN      -
tcp6       0      0 127.0.0.1:9200          :::*                    LISTEN      -
tcp6       0      0 ::1:9200                :::*                    LISTEN      -
tcp6       0      0 :::8080                 :::*                    LISTEN      -
tcp6       0      0 127.0.0.1:9300          :::*                    LISTEN      -
tcp6       0      0 ::1:9300                :::*                    LISTEN      -
udp        0      0 0.0.0.0:57318           0.0.0.0:*                           -
udp        0      0 127.0.0.53:53           0.0.0.0:*                           -
udp        0      0 0.0.0.0:68              0.0.0.0:*                           -
udp        0      0 0.0.0.0:111             0.0.0.0:*                           -
udp        0      0 0.0.0.0:631             0.0.0.0:*                           -
udp6       0      0 :::2049                 :::*                                -
udp6       0      0 :::43158                :::*                                -
udp6       0      0 :::35909                :::*                                -
udp6       0      0 :::54173                :::*                                -
udp6       0      0 :::5353                 :::*                                -

sathya@ubuntu:~$ netstat -tupln | grep 2049
(Not all processes could be identified, non-owned process info
 will not be shown, you would have to be root to see it all.)
tcp        0      0 0.0.0.0:2049            0.0.0.0:*               LISTEN      -
tcp6       0      0 :::2049                 :::*                    LISTEN      -
udp        0      0 0.0.0.0:2049            0.0.0.0:*                           -
udp6       0      0 :::2049                 :::*                                -
```
### netstat with admin user

```
sathya@ubuntu:~$ sudo netstat -tupln
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 127.0.0.53:53           0.0.0.0:*               LISTEN      793/systemd-resolve
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      1061/sshd
tcp        0      0 127.0.0.1:631           0.0.0.0:*               LISTEN      5050/cupsd
tcp        0      0 127.0.0.1:38685         0.0.0.0:*               LISTEN      1034/containerd
tcp        0      0 0.0.0.0:37533           0.0.0.0:*               LISTEN      -
tcp        0      0 0.0.0.0:2049            0.0.0.0:*               LISTEN      -
tcp        0      0 127.0.0.1:3306          0.0.0.0:*               LISTEN      1111/mysqld
tcp        0      0 0.0.0.0:38699           0.0.0.0:*               LISTEN      1036/rpc.mountd
tcp        0      0 0.0.0.0:43755           0.0.0.0:*               LISTEN      1036/rpc.mountd
tcp        0      0 0.0.0.0:46861           0.0.0.0:*               LISTEN      1036/rpc.mountd
tcp        0      0 0.0.0.0:111             0.0.0.0:*               LISTEN      790/rpcbind
tcp6       0      0 :::22                   :::*                    LISTEN      1061/sshd
tcp6       0      0 ::1:631                 :::*                    LISTEN      5050/cupsd
tcp6       0      0 :::36475                :::*                    LISTEN      1036/rpc.mountd
tcp6       0      0 :::38367                :::*                    LISTEN      1198/java
tcp6       0      0 :::2049                 :::*                    LISTEN      -
tcp6       0      0 :::37953                :::*                    LISTEN      1036/rpc.mountd
tcp6       0      0 :::38819                :::*                    LISTEN      -
tcp6       0      0 :::2181                 :::*                    LISTEN      1198/java
tcp6       0      0 :::37961                :::*                    LISTEN      1036/rpc.mountd
tcp6       0      0 :::111                  :::*                    LISTEN      790/rpcbind
tcp6       0      0 127.0.0.1:9200          :::*                    LISTEN      1247/java
tcp6       0      0 ::1:9200                :::*                    LISTEN      1247/java
tcp6       0      0 :::8080                 :::*                    LISTEN      1515/java
tcp6       0      0 127.0.0.1:9300          :::*                    LISTEN      1247/java
tcp6       0      0 ::1:9300                :::*                    LISTEN      1247/java
udp        0      0 0.0.0.0:57318           0.0.0.0:*                           1036/rpc.mountd
udp        0      0 127.0.0.53:53           0.0.0.0:*                           793/systemd-resolve
udp        0      0 0.0.0.0:68              0.0.0.0:*                           2677/dhclient
udp        0      0 0.0.0.0:111             0.0.0.0:*                           790/rpcbind
udp        0      0 0.0.0.0:631             0.0.0.0:*                           5052/cups-browsed
udp        0      0 0.0.0.0:966             0.0.0.0:*                           790/rpcbind
udp        0      0 0.0.0.0:42355           0.0.0.0:*                           1036/rpc.mountd
udp        0      0 0.0.0.0:58947           0.0.0.0:*                           -
udp        0      0 0.0.0.0:2049            0.0.0.0:*                           -
udp        0      0 0.0.0.0:43872           0.0.0.0:*                           821/avahi-daemon: r
udp        0      0 0.0.0.0:60994           0.0.0.0:*                           1036/rpc.mountd
udp        0      0 0.0.0.0:5353            0.0.0.0:*                           821/avahi-daemon: r
udp6       0      0 :::49237                :::*                                821/avahi-daemon: r
udp6       0      0 :::111                  :::*                                790/rpcbind
udp6       0      0 :::966                  :::*                                790/rpcbind
udp6       0      0 :::50388                :::*                                1036/rpc.mountd
udp6       0      0 :::2049                 :::*                                -
udp6       0      0 :::43158                :::*                                1036/rpc.mountd
udp6       0      0 :::35909                :::*                                -
udp6       0      0 :::54173                :::*                                1036/rpc.mountd
udp6       0      0 :::5353                 :::*                                821/avahi-daemon: r
```
### identifying particular port

### apache http 8080

```
sathya@ubuntu:~$ sudo netstat -tupln | grep 8080
tcp6       0      0 :::8080                 :::*                    LISTEN      1515/java
```
### elasticsearch 9200

```
sathya@ubuntu:~$ sudo netstat -tupln | grep 9200
tcp6       0      0 127.0.0.1:9200          :::*                    LISTEN      1247/java
tcp6       0      0 ::1:9200                :::*                    LISTEN      1247/java
```
### mysql 3306

```
sathya@ubuntu:~$ sudo netstat -tupln | grep 3306
tcp        0      0 127.0.0.1:3306          0.0.0.0:*               LISTEN      1111/mysqld
```

### systemctl to stop & start service or softwares

```
sathya@ubuntu:~$ sudo systemctl stop jenkins

sathya@ubuntu:~$ sudo netstat -tupln | grep 8080

sathya@ubuntu:~$ sudo systemctl status jenkins
● jenkins.service - LSB: Start Jenkins at boot time
   Loaded: loaded (/etc/init.d/jenkins; generated)
   Active: inactive (dead) since Sun 2021-02-21 05:29:38 CET; 1min 15s ago
     Docs: man:systemd-sysv-generator(8)
  Process: 6110 ExecStop=/etc/init.d/jenkins stop (code=exited, status=0/SUCCESS)
  Process: 1253 ExecStart=/etc/init.d/jenkins start (code=exited, status=0/SUCCESS)

sathya@ubuntu:~$ sudo systemctl start jenkins
sathya@ubuntu:~$ sudo systemctl status jenkins
● jenkins.service - LSB: Start Jenkins at boot time
   Loaded: loaded (/etc/init.d/jenkins; generated)
   Active: active (exited) since Sun 2021-02-21 05:31:49 CET; 2s ago
     Docs: man:systemd-sysv-generator(8)
  Process: 6110 ExecStop=/etc/init.d/jenkins stop (code=exited, status=0/SUCCESS)
  Process: 6198 ExecStart=/etc/init.d/jenkins start (code=exited, status=0/SUCCESS)
```

### grep -rnw (global regular expression print) - find in word document.

```
sathya@ubuntu:~$ grep -rnw /home/sathya/logs/ -e "SUCCESS"
/home/sathya/logs/spark-maven-shade-build.log:672:[INFO] BUILD SUCCESS
sathya@ubuntu:~$
```

### ping

```
sathya@ubuntu:~$ ping www.google.com
PING www.google.com (142.250.71.4) 56(84) bytes of data.
64 bytes from maa03s34-in-f4.1e100.net (142.250.71.4): icmp_seq=1 ttl=128 time=9.54 ms
64 bytes from maa03s34-in-f4.1e100.net (142.250.71.4): icmp_seq=2 ttl=128 time=8.27 ms
64 bytes from maa03s34-in-f4.1e100.net (142.250.71.4): icmp_seq=3 ttl=128 time=9.49 ms
64 bytes from maa03s34-in-f4.1e100.net (142.250.71.4): icmp_seq=4 ttl=128 time=7.52 ms
64 bytes from maa03s34-in-f4.1e100.net (142.250.71.4): icmp_seq=5 ttl=128 time=27.3 ms
^C
--- www.google.com ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4008ms
rtt min/avg/max/mdev = 7.522/12.434/27.346/7.495 ms
sathya@ubuntu:~$ ping www.google1.com
ping: www.google1.com: Name or service not known
sathya@ubuntu:~$ ping 192.168.59.17
PING 192.168.59.17 (192.168.59.17) 56(84) bytes of data.
^C
--- 192.168.59.17 ping statistics ---
33 packets transmitted, 0 received, 100% packet loss, time 32745ms

sathya@ubuntu:~$ ping 192.168.93.159
PING 192.168.93.159 (192.168.93.159) 56(84) bytes of data.
64 bytes from 192.168.93.159: icmp_seq=1 ttl=64 time=0.106 ms
64 bytes from 192.168.93.159: icmp_seq=2 ttl=64 time=0.116 ms
64 bytes from 192.168.93.159: icmp_seq=3 ttl=64 time=0.246 ms
64 bytes from 192.168.93.159: icmp_seq=4 ttl=64 time=0.117 ms
--- 192.168.93.159 ping statistics ---
20 packets transmitted, 20 received, 0% packet loss, time 19444ms
rtt min/avg/max/mdev = 0.106/0.141/0.246/0.042 ms
sathya@ubuntu:~$
```

### telnet ip port

```
sathya@ubuntu:~$ telnet 127.0.0.1 8080
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
Connection closed by foreign host.
sathya@ubuntu:~$ telnet 127.0.0.1 9200
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
^C^[[A^C^C
Connection closed by foreign host.
sathya@ubuntu:~$ telnet 127.0.0.1 3306
Trying 127.0.0.1...
Connected to 127.0.0.1.
Escape character is '^]'.
[
5.7.33-0ubuntu0.18.04.16-.S^]9qS1_7xm=mysql_native_password^CConnection closed by foreign host.
```

###  File Operations

### cut -> select specific columns in a file based on delimiter

```
sathya@ubuntu:~/besant-devops/file$ cat text.txt | cut -f2 -d","
2
b

sathya@ubuntu:~/besant-devops/file$ cat text.txt | cut -f3 -d","
3
c

sathya@ubuntu:~/besant-devops/file$ cat text.txt | cut -f4 -d","
4
d

sathya@ubuntu:~/besant-devops/file$ cat text.txt 
1,2,3,4,5,6
a,b,c,d,e,f
```
### sed - find and replace in a document

```
sed -i 's/1/11/g' text.txt
sed -i 's/a/aa/g' text.txt
```

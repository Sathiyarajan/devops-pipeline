```
wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /tmp
tar xf /tmp/apache-maven-3.6.3-bin.tar.gz -C /opt
sudo tar xf /tmp/apache-maven-3.6.3-bin.tar.gz -C /opt
sudo [Bln -s /opt/apache-maven-3.6.3 /opt/maven
sudo ln -s /opt/apache-maven-3.6.3 /opt/maven
```
```
sudo vim /etc/profile.d/maven.sh and add this contents

export JAVA_HOME=/usr/lib/jvm/default-java
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}

```
```
source /etc/profile.d/maven.sh
mvn -v
ls /opt/maven
```

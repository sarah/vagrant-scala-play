# Configure apt for java
# http://www.webupd8.org/2012/01/install-oracle-java-jdk-7-in-ubuntu-via.html
apt-get update
apt-get install -y python-software-properties
add-apt-repository -y ppa:webupd8team/java
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

# Update apt sources
apt-get update

# Install scala and play manually
cd /opt
wget http://www.scala-lang.org/files/archive/scala-2.10.3.tgz
tar -zxvf scala-2.10.3.tgz

wget http://downloads.typesafe.com/play/2.2.1/play-2.2.1.zip
unzip play-2.2.1.zip
chmod +x /opt/play-2.2.1/play
chmod +x /opt/play-2.2.1/framework/build
chmod -R a+rw /opt/play-2.2.1/*

echo 'PATH=${PATH}:/opt/scala-2.10.3/bin:/opt/play-2.2.1' >> /etc/profile

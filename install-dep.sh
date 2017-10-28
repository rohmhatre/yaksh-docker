#!/bin/bash
if [ ! "`whoami`" = "root" ]
then
    echo -e "\nPlease run script as root.\n"
    exit 1
fi
echo "Cloning online yaksh from GitHub"
git clone https://github.com/rohmhatre/online_test.git
mkdir -p online_test/output online_test/yaksh/data
chmod -R 777 online_test/output online_test/yaksh/data
echo "Installing docker and docker-compose"
sudo apt-get update -y && sudo apt-get install git 
apt-get update
apt-get install -y apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get purge lxc-docker
apt-cache policy docker-engine
apt-get update
apt-get install -y docker-engine
service docker start
sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.15.0/docker-compose-$(uname -s)-$(uname -m)"
sudo chmod +x /usr/local/bin/docker-compose


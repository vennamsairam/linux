#how to install docker in centos

yum update -y


yum install -y yum-utils

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

systemctl start docker


sytemctl  enable docker

systemctl  status docker 


docker run hello-world

########
  
  yum install docker -y
  docker --version 
  docker verion
  systemctl status docker.service
  docker pull ubuntu
  docker container -  docker run -it name
 inside container -cat /etc/0s-release
  exit
  docker image -   docker build -t my image
  
  remove docker -docker rm $(docker ps -a -q)
  
  stop docker   -docker stop $(docker ps -a -q)
  
  push image to docker hub -   docker push username

  pull image to doker hub - docker pull username
  
  create docker network - docker network create my_network
  
  inspect a docker network -docker network inspect my_network
  
  list of docker list - docker network ls
  
  inspect docker volume - docker volume inspect my_volume
  
  check docker version - docker version
  
  create docker volume - docker volume cerate my_volume
  
  start docker swarm - docker swarm init
  
  deploy a service in docker swarm - docker service create --name my_service my_image
  
  update docker service - docker service update --image new_image my_service
  
  inspect docker service - docker service inspect my_service
  
  list docker images - docker images

  #######
  
  

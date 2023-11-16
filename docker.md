```

Update the Package List:
apt update
2. Install Necessary Dependencies:
 apt install apt-transport-https ca-certificates curl software-properties-common
3. Add Docker's GPG Key:

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
4. Set up the Stable Docker Repository:

echo "deb [signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
5. Update the Package List Again:

sudo apt update
6. Install Docker:

sudo apt install docker-ce docker-ce-cli containerd.io
7. Verify Docker Installation:

sudo docker run hello-world
This command downloads a test image and runs it in a container. If everything is set up correctly, you should see a "Hello from Docker!" message.

8. Manage Docker as a Non-Root User (Optional):
By default, Docker requires root privileges. If you want to run Docker commands without sudo, you can add your user to the docker group:

bash
Copy code
sudo usermod -aG docker $USER
Log out and log back in, or run the following command to apply the group changes:

bash
Copy code
newgrp docker
9. Check Docker Version:
bash
Copy code
docker --version
This should display the installed Docker version.

That's it! You've successfully installed Docker on Ubuntu. Keep in mind that the Docker daemon will start automatically after installation. If you ever need to stop or restart it, you can use:

bash
Copy code
sudo systemctl stop docker
sudo systemctl start docker
sudo systemctl restart docker
Remember to refer to the official Docker documentation for the most up-to-date instructions: Docker Installation on Ubuntu.

[root@stack01 ~]# docker run -itd --name web-server -p 9999:80 nirulabs/tea
Unable to find image 'nirulabs/tea:latest' locally
latest: Pulling from nirulabs/tea
26c5c85e47da: Pull complete
2d29d3837df5: Pull complete
2483414a5e59: Pull complete
e78016c4ba87: Pull complete
757908175415: Pull complete
f56970c32b99: Pull complete
Digest: sha256:645ac456a10f47758e91fde98f88b9fcd40128663302d67814dad2472e46dbd2
Status: Downloaded newer image for nirulabs/tea:latest


```

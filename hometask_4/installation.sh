#!/bin/bash

sudo apt-get update
#Older versions of Docker were called docker, docker.io, or docker-engine. If these are installed, uninstall them:
sudo apt-get remove docker docker-engine docker.io containerd runc
#Install Docker using the convenience script
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
#Adding a user to the “docker” group grants them the ability to run containers which can be used to obtain root privileges on the Docker host
sudo usermod -aG docker vagrant
#Remember to log out and back in for this to take effect! or
#Getting a shell with the new group without logging out and in again
exec sg docker newgrp `id -gn`

#!/bin/bash
#date:2017/08/04
sudo apt-get remove -y docker docker-engine && \
sudo apt-get install apt-transport-https  ca-certificates curl software-properties-common -y && \
sudo apt-key fingerprint 0EBFCD88 && \
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  && \
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"  && \
sudo apt-get update && \
sudo apt-get install docker-ce -y --allow-unauthenticated && \
sudo docker version
#Dockerfile to build ansible image from ubuntu 20.04 base

# Use latest ubuntu base
FROM ubuntu:20.04

# Label
LABEL dexription="Ubuntu Ansible Container"

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update packages
RUN apt update -y
RUN apt upgrade -y

# Install pip installer
RUN apt install python3-pip -y

# Install ansible package from focal repo
RUN apt install ansible -y

# Install python docker sdk - to manage docker containers with ansible
RUN apt install python3-docker -y

# pip install ansible - may switch to use pip in future
#RUN pip3 install ansible
#RUN pip3 install docker

# Add ansible user in image -- if needed.
# RUN useradd -d /home/ansible -m -p ansible -b /home -s /bin/bash -k /etc/skel ansible

# Set environment 
USER root
WORKDIR /root
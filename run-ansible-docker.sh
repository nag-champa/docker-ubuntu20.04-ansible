#!/bin/bash

# Script to start ansible in ubuntu docker container.
# Container will be removed on exit
# Mount host volumes to container for ssh keys & code location

docker run -it --rm \
--hostname ansible \
-w /home/ansible/ansible/ \
-v ~/ansible/:/root/ansible \
-v ~/.ssh:/root/.ssh/ ansible-ubuntu:1.2 /bin/bash

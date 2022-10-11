FROM python:3.9-slim

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install ansible
RUN apt-get update -y; exit 0
RUN apt-get install ssh -y && \
    apt-get install sshpass -y
RUN apt-get install vim -y

RUN which ansible
 
WORKDIR /root
COPY ./ansible /etc/ansible
COPY ./playbook/ /root/
COPY ./task /root/task

ENTRYPOINT [ "/bin/bash" ]
# ENTRYPOINT [ "ansible-playbook" ]
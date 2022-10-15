FROM python:3.9-slim

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install ansible
RUN python3 -m pip install ansible-lint
RUN apt-get update -y; exit 0
RUN apt-get install ssh -y && \
    apt-get install sshpass -y
RUN apt-get install git -y
RUN apt-get install vim -y
 
WORKDIR /root
COPY ./ansible /etc/ansible
COPY ./ /root/
COPY ./playbook/ /root/

RUN ansible-lint playbook/

ENTRYPOINT [ "/bin/bash" ]
# ENTRYPOINT [ "ansible-playbook" ]
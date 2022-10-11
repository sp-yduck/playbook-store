# ansible playbook repository

ansible playbook and simple execution environment with docker

## How to use

Prepare your hosts file (https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html).

Then you can start your playbooks like following commands.
```sh
# build
docker build . -t <nema:tag>

# run
docker run -it <name:tag>

# then you will be in the container
root@container:~$ ansible-playbook hello-world.yaml --ask-pass 
SSH password: # pass your ssh key for your hosts
```
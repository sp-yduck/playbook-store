# ansible playbook repository

## How to
```sh
# build
docker build . -t <nema:tag>

# run
docker run -it <name:tag>

# then you will be in the container
root@container:~$ ansible-playbook hello-world.yaml --ask-pass
```
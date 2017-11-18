#!/bin/bash

docker run -p 22022:22 \
  -e SSH_KEY="$(cat admin.pub)" \
  -v $HOME/docker-data/git/repositories:/home/git/repositories \
  -v $HOME/docker-data/git/ssh:/etc/ssh \
  --restart=always \
  --name gitolite flatlining/gitolite:arm

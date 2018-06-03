#!/usr/bin/env bash

docker run -p 22022:22 \
  -e SSH_KEY="$(cat admin.pub)" \
  -v $HOME/data/gitolite/repositories:/home/git/repositories \
  -v $HOME/data/gitolite/ssh:/etc/ssh \
  --restart=always \
  --name gitolite flatlining/gitolite:arm

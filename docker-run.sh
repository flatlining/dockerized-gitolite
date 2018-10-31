#!/usr/bin/env bash

docker container run -p 22022:22 \
  -e SSH_KEY="$(cat admin.pub)" \
  -v $HOME/gitolite/repositories:/home/git/repositories \
  -v $HOME/gitolite/ssh:/etc/ssh \
  --restart=always \
  --name gitolite gitolite

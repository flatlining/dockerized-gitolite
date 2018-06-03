#!/usr/bin/env bash

TMSTMP=$(date +%Y%m%d-%H%M%S)

tar czf /home/pirate/git-$TMSTMP.tar.gz -C /home/pirate/data/gitolite/ repositories

chown pirate:pirate git-$TMSTMP.tar.gz

echo "git-$TMSTMP.tar.gz"

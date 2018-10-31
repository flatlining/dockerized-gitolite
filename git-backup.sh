#!/usr/bin/env bash

TMSTMP=$(date +%Y%m%d-%H%M%S)
USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

tar czf $USER_HOME/git-$TMSTMP.tar.gz -C $USER_HOME/gitolite/ repositories

chown $SUDO_USER:$SUDO_USER $USER_HOME/git-$TMSTMP.tar.gz

echo "git-$TMSTMP.tar.gz"

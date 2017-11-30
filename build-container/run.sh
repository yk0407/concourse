#!/bin/sh

GIT_VARS=$(cd git-master && git log -n 1 --pretty=format:"%h::%cn::%ce::%cd" --date=iso)

mkdir -p vars/docker
echo "latest" > vars/docker/tags
echo $GIT_VARS | awk -F'::' '{print $1}' >> vars/docker/tags
mkdir -p vars/git
echo $GIT_VARS | awk -F'::' '{print $1}' > vars/git/hash
echo $GIT_VARS | awk -F'::' '{print $2}' > vars/git/user
echo $GIT_VARS | awk -F'::' '{print $3}' > vars/git/address

#git archive --format=tar.gz HEAD > ~/git-container/master/mdsystem.tar.gz

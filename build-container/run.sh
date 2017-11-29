#!/bin/sh

GIT_VARS=$(cd git-master && git log -n 1 --pretty=format:"%h %cn %ce %cd" --date=iso)

# git archive --format=tar.gz HEAD > ~/git-container/master/mdsystem.tar.gz

echo $GIT_VARS

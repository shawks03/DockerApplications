#!/bin/bash

#https://github.com/jlund/docker-chrome-pulseaudio
#https://unix.stackexchange.com/questions/12755/how-to-forward-x-over-ssh-to-run-graphics-applications-remotely

cp $HOME/.ssh/id_rsa.pub .

USER=`whoami`
ID=`id -u $USER`
GID=`id -g $USER`

docker build \
   --build-arg USER=$USER \
   --build-arg ID=$ID \
   --build-arg GID=$GID \
   -t applications/ssh .

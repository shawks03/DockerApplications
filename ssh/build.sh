#!/bin/bash

#https://github.com/jlund/docker-chrome-pulseaudio
#https://unix.stackexchange.com/questions/12755/how-to-forward-x-over-ssh-to-run-graphics-applications-remotely

cp $HOME/.ssh/id_rsa.pub .
docker build -t applications/ssh .

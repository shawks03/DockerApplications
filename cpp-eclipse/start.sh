#!/bin/bash

USER=`whoami`
docker run --rm -d -p 127.0.0.1:2222:22 -v $HOME/workspace:/home/$USER/workspace:rw applications/cpp-eclipse

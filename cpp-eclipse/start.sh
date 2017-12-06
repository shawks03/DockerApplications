#!/bin/bash

docker run --privileged -d -p 127.0.0.1:2222:22 -v $HOME/workspace:/home/$USER/workspace:rw applications/cpp-eclipse

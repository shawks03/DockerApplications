#!/bin/bash

docker run --privileged -d -p 127.0.0.1:2222:22 -v $HOME/data:/home/dev/data:rw applications/qgis
sleep 2
ssh -X -p 2222 dev@127.0.0.1 /usr/bin/terminator
# Then run 'qgis' in terminator.

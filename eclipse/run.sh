#!/bin/bash

docker run --privileged -d -p 127.0.0.1:2222:22 -v $HOME/workspace:/home/dev/eclipse-workspace:rw applications/eclipse
sleep 2
ssh -X -p 2222 dev@127.0.0.1 /usr/bin/terminator
# Then run '/eclipse/eclipse -data ~/eclipse-workspace' in terminator.

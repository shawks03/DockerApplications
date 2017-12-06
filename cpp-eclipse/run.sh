#!/bin/bash

USER=`whoami`
ssh -X -p 2222 $USER@127.0.0.1 /usr/bin/terminator
# Then run '/eclipse/eclipse -data ~/workspace' in terminator.

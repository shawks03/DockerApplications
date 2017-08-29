#!/bin/bash

docker run -d -p 127.0.0.1:2222:22 applications/terminator
sleep 2
ssh -X -p 2222 dev@127.0.0.1 /usr/bin/terminator

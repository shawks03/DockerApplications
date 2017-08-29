FROM applications/eclipse
MAINTAINER Sean Farrell "shawks03@yahoo.com"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
       cmake \
       gcc \
       g++ \
       libboost-all-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

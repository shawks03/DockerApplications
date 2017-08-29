FROM applications/ssh
MAINTAINER Sean Farrell "shawks03@yahoo.com"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
       hicolor-icon-theme \
       language-pack-en-base \
       terminator && \
    dpkg-reconfigure locales && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

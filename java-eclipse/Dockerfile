FROM applications/java
MAINTAINER Sean Farrell "shawks03@yahoo.com"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
       libgtk2.0-0 \
       libxtst6 \
       wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN wget -c http://mirror.math.princeton.edu/pub/eclipse/technology/epp/downloads/release/oxygen/R/eclipse-java-oxygen-R-linux-gtk-x86_64.tar.gz && \
    tar xzf eclipse-java-oxygen-R-linux-gtk-x86_64.tar.gz && \
    rm eclipse-java-oxygen-R-linux-gtk-x86_64.tar.gz

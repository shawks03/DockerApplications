FROM applications/terminator
MAINTAINER Sean Farrell "shawks03@yahoo.com"

RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common && \
    apt-add-repository -y "deb http://qgis.org/debian $(lsb_release -s -c) main" && \
    apt-get update && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-key CAEB3DC3BDF7FB45 && \
    apt-get install -y --no-install-recommends --allow-unauthenticated qgis python-qgis qgis-plugin-grass && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

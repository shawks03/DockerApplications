FROM ubuntu:16.04
MAINTAINER Sean Farrell "shawks03@yahoo.com"

ENV DEBIAN_FRONTEND noninteractive

# Install OpenSSH
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
       apt-utils \
       dbus-x11 \
       openssh-server \
       xauth && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Create OpenSSH privilege separation directory
RUN mkdir /var/run/sshd

# Add the dev user that will run the browser
RUN adduser --disabled-password --gecos "Dev User" --uid 5001 dev

# Add SSH public key for the dev user
RUN mkdir /home/dev/.ssh
COPY id_rsa.pub /home/dev/.ssh/authorized_keys
RUN chown -R dev:dev /home/dev/.ssh

# Make sure "X11Forwarding yes" and "X11DisplayOffset 10"
RUN sed -i 's/#X11Forwarding/X11Forwarding/' /etc/ssh/sshd_config && \
    sed -i 's/X11Forwarding no/X11Forwarding yes/' /etc/ssh/sshd_config && \
    sed -i 's/#X11DisplayOffset/X11DisplayOffset/' /etc/ssh/sshd_config && \
    sed -i 's/X11DisplayOffset.*/X11DisplayOffset 10/' /etc/ssh/sshd_config

# Start SSH so we are ready to make a tunnel
ENTRYPOINT ["/usr/sbin/sshd", "-D"]

# Expose the SSH port
EXPOSE 22

FROM ubuntu:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
    git \
    openssh-server

RUN useradd -ms /bin/bash git

COPY new-repo.sh /new-repo.sh

CMD service ssh start && \
    service ssh status && \
    touch /var/log/auth.log && \
    tail /var/log/auth.log -f
    

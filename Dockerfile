FROM ubuntu:focal AS base

WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential vim && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

COPY . .

# Add a command to keep the container running with a shell
CMD ["/bin/bash"]

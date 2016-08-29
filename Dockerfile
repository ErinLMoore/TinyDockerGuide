FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
    build-essential \
    check \
    git \
    nano \
    pkg-config

VOLUME ["/code"]
WORKDIR /code

CMD ["/bin/bash"]

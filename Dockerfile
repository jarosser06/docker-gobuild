# DOCKER-VERSION 1.1.0

FROM golang:1.4

RUN git clone https://github.com/pote/gpm.git /tmp/gpm
WORKDIR /tmp/gpm
RUN ./configure && make install
RUN mkdir /mnt/project
WORKDIR /mnt/project

VOLUME ["/mnt/project"]

CMD ["make"]

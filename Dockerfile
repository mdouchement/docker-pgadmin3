FROM ubuntu:wily
MAINTAINER mdouchement

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y pgadmin3 --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/mdouchement
WORKDIR /home/mdouchement
RUN useradd mdouchement -u 1000 -s /bin/bash
RUN chown mdouchement -R /home/mdouchement
USER mdouchement
ENV HOME /home/mdouchement

CMD pgadmin3
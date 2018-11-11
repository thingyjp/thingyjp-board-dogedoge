FROM debian:testing
RUN apt-get update
RUN apt-get install -y build-essential file wget cpio python unzip rsync bc git
ADD . /root

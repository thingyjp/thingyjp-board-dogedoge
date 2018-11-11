FROM debian:testing
RUN apt-get update
RUN apt-get install -q -y build-essential file wget cpio python unzip rsync bc git
RUN useradd -m buildroot
ADD . /home/buildroot
RUN chown -R buildroot:buildroot /home/buildroot

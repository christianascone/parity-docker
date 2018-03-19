FROM ubuntu:16.04

RUN apt-get clean && apt-get -y update && apt-get install -y curl sudo
RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER docker
CMD /bin/bash
RUN /bin/bash -c "bash <(curl https://get.parity.io -kL)"

EXPOSE 8180
EXPOSE 8545
EXPOSE 8546
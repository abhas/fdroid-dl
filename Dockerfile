FROM debian:buster

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y python3 python3-setuptools ca-certificates
ADD . /usr/local/src/fdroid-dl/
WORKDIR /usr/local/src/fdroid-dl/
RUN python3 setup.py install
VOLUME /opt/fdroid
WORKDIR /opt/fdroid
CMD ["/bin/bash" , "-e" , "$@"]

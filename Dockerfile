FROM debian:11-slim

RUN apt-get update \
  && apt-get install -y curl bzip2 build-essential flex bison python3 libboost-dev gputils texinfo zlib1g-dev autoconf \
  && mkdir -p /opt/sdcc-src \
  && mkdir -p /opt/sdcc \
  && cd /opt/sdcc-src \
  && curl -fsSL https://udomain.dl.sourceforge.net/project/sdcc/sdcc/4.1.0/sdcc-src-4.1.0.tar.bz2 |tar -xj --strip-components=1 \
  && ./configure --prefix=/opt/sdcc \
  && make \
  && make install

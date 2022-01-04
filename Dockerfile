FROM debian:11-slim as build

ARG DOCKER_META_VERSION
ARG SDCC_VER=${DOCKER_META_VERSION}

RUN apt-get update \
  && apt-get -qq install -y curl bzip2 build-essential flex bison python3 libboost-dev gputils texinfo zlib1g-dev autoconf \
  && mkdir -p /opt/sdcc-src \
  && mkdir -p /opt/sdcc \
  && cd /opt/sdcc-src \
  && curl -fsSL https://udomain.dl.sourceforge.net/project/sdcc/sdcc/${SDCC_VER}/sdcc-src-${SDCC_VER}.tar.bz2 | tar -xj --strip-components=1 \
  && ./configure --prefix=/opt/sdcc \
  && make \
  && make install

FROM debian:11-slim

COPY --from=build /opt/sdcc/bin /usr/bin
COPY --from=build /opt/sdcc/share /usr/share

FROM panoti/sdcc:latest

RUN apt update && apt install -y make \
    && mkdir -p /usr/include/stm8s_std \
    && mkdir -p /usr/src/stm8s_std

COPY ./stm8s_std/inc /usr/include/stm8s_std
COPY ./stm8s_std/src /usr/src/stm8s_std

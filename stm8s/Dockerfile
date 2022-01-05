FROM panoti/sdcc:latest

RUN apt update && apt install -y make \
    && mkdir -p /usr/include/stm8s_spl \
    && mkdir -p /usr/src/stm8s_spl

COPY ./stm8s_spl/inc /usr/include/stm8s_spl
COPY ./stm8s_spl/src /usr/src/stm8s_spl

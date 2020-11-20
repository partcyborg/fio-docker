FROM alpine:3.12

RUN apk add --no-cache fio==3.20-r0

COPY jobs /jobs
VOLUME /data
WORKDIR /data

ENTRYPOINT [ "fio" ]

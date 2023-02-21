# Copyright 2023 by IU2NAF - Op. Diego 
FROM alpine:latest

RUN apk update
RUN apk add build-base libffi-dev openssl-dev curl wget git python3 py3-pip
RUN pip3 install webssh
RUN rm -rf /root/.cache/*

EXPOSE 8080

CMD ["wssh", "--address=0.0.0.0", "--port=8080"]

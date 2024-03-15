FROM --platform=linux/amd64  ubuntu:22.04


RUN apt update && apt install -y ca-certificates wget

WORKDIR /app


RUN wget https://storage.googleapis.com/usermgmt-cli-alpha/usermgmt.tar.gz

RUN tar -xvf usermgmt.tar.gz && mv usermgmt_linux_amd64 ../ && rm usermgmt* && mv ../usermgmt_linux_amd64 .




FROM ubuntu:latest

LABEL maintainer="Lorranny"

RUN apt-get update && \
    apt-get install -y wget unzip curl git sudo openssh-client iputils-ping

ENV TERRAFORM_VERSION=1.8.2

RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN mkdir /iac
VOLUME /iac

CMD ["/bin/bash"]

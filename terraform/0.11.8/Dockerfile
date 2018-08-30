# Dockerfile
FROM golang:alpine

# Do not stdout/stderr buffer
ENV PYTHONUNBUFFERED 1

# Create application directory
RUN mkdir -p /var/app/orchestration/terraform
WORKDIR /var/app

# Install dependent packages
RUN apk update &&\
	apk add --no-cache --virtual .build-deps \
    curl

# Install terraform
RUN curl -O https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip &&\
	unzip -d /usr/local/bin terraform_0.11.8_linux_amd64.zip &&\
	rm -f terraform_0.11.8_linux_amd64.zip

# Delete dependent packages
RUN apk del .build-deps

ADD . /var/app/

WORKDIR /var/app/orchestration/terraform

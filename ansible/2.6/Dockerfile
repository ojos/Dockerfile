# Dockerfile
FROM python:alpine

# Do not stdout/stderr buffer
ENV PYTHONUNBUFFERED 1

# Create application directory
RUN mkdir -p /var/app/orchestration/ansible
WORKDIR /var/app

# Install dependent packages
RUN apk add --no-cache --virtual .build-deps \
    gcc \
    musl-dev \
    libffi-dev \
    openssl-dev \
    make
RUN apk add openssh-client

# Install python packages
COPY requirements.txt /var/app
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Delete dependent packages
RUN apk del .build-deps

ADD . /var/app/

WORKDIR /var/app/orchestration/ansible

# Dockerfile
FROM alpine

# Create application directory
RUN mkdir -p /var/app
WORKDIR /var/app

# Install dependent packages
RUN apk add --no-cache openssh-client

ADD . /var/app
ENTRYPOINT ["/usr/bin/ssh"]
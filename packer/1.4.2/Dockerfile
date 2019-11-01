# Dockerfile
FROM hashicorp/packer:light

# Create application directory
RUN mkdir -p /var/app
WORKDIR /var/app

# Install dependent packages
RUN apk add --no-cache openssh-client \
					   ansible

ADD . /var/app
ENTRYPOINT ["/bin/packer"]

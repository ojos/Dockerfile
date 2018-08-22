# Dockerfile
FROM ojos/python-app:3.7-alpine

# Move application directory
WORKDIR /var/app

# Install dependent packages
RUN apk add --no-cache mariadb-dev
RUN apk add --no-cache --virtual .build-deps \
    gcc \
    musl-dev
COPY requirements.txt /var/app
RUN pip install --upgrade pip && \
    pip install -r requirements.txt
RUN apk del .build-deps
ADD . /var/app/

# Dockerfile
FROM mysql:5.6

# Set default locale to ja_JP.UTF-8
RUN apt-get update && \
    apt-get install -y locales && \
    rm -rf /var/lib/apt/lists/* && \
    echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8

# Set MySQL character
RUN { \
    echo '[mysqld]'; \
    echo 'character-set-server=utf8mb4'; \
    echo 'skip-character-set-client-handshake'; \
    echo 'collation-server=utf8mb4_general_ci'; \
    echo 'innodb_large_prefix'; \
    echo 'innodb_file_per_table'; \
    echo 'innodb_file_format=Barracuda'; \
} > /etc/mysql/mysql.conf.d/charset.cnf
RUN { \
    echo '[client]'; \
    echo 'default-character-set=utf8mb4'; \
} > /etc/mysql/conf.d/charset.cnf

# vim: set ft=dockerfile:
FROM alpine:3.6
# Author with no obligation to maintain
MAINTAINER Ajeet Singh Raina ajeetraina@gmail.com>

ENV DBHOST="mariadb" \
    DBNAME="racktables" \
    DBUSER="racktables" \
    DBPASS=""

COPY entrypoint.sh /entrypoint.sh
RUN apk update
RUN apk --no-cache add \
    ca-certificates \
    curl \
    php5-bcmath \
    php5-curl \
    php5-fpm \
    php5-gd \
    php5-json \
    php5-ldap \
    php5-pcntl \
    php5-pdo_mysql \
    php5-snmp \
    && chmod +x /entrypoint.sh \
    && curl -sSLo /racktables.tar.gz 'https://github.com/RackTables/racktables/archive/RackTables-0.21.1.tar.gz' \
    && mkdir /opt \
    && tar -xz -C /opt -f /racktables.tar.gz \
    && mv /opt/racktables-RackTables-0.21.1 /opt/racktables \
    && rm -f /racktables.tar.gz \
    && sed -i \
    -e 's|^listen =.*$|listen = 9000|' \
    -e 's|^;daemonize =.*$|daemonize = no|' \
    /etc/php5/php-fpm.conf

# Adding Plugins for Racktable Reports

RUN apk add git \
   && git clone https://github.com/collabnix/racktables-contribs \
   && cd racktables-contribs/extensions \
   && cp -r plugins/* /opt/racktables/plugins/

VOLUME /opt/racktables/wwwroot
EXPOSE 9000
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/bin/php-fpm5"]

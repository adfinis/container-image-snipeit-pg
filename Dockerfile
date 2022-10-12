FROM docker.io/snipe/snipe-it:v6.0.11-alpine 

RUN apk add --no-cache \
  php7-pdo_pgsql \
  postgresql

ENV DB_CONNECTION=pgsql

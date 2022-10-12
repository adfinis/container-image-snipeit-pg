FROM docker.io/snipe/snipeit:v6.0.11-alpine 

RUN apk add --no-cachhe \
  php7-pdo_pgsql \
  postgresql

ENV DB_CONNECTION=pgsql

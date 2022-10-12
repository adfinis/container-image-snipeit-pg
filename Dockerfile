FROM docker.io/snipe/snipe-it:v6.0.11

RUN export DEBIAN_FRONTEND=noninteractive; \
  export DEBCONF_NONINTERACTIVE_SEEN=true; \
  echo 'tzdata tzdata/Areas select Etc' | debconf-set-selections; \
  echo 'tzdata tzdata/Zones/Etc select UTC' | debconf-set-selections; \
  apt-get update -qqy; \
  apt-get install -qqy --no-install-recommends \
  php7.4-pgsql

ENV DB_CONNECTION=pgsql

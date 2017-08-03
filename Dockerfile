FROM postgres:9.4


# encoding
RUN apt-get install locales && echo 'fr_FR.UTF-8 UTF-8' >> /etc/locale.gen && locale-gen fr_FR.UTF-8  && update-locale LANG=fr_FR.UTF-8
ENV LANG fr_FR.UTF-8

# postGIS
ENV POSTGIS_MAJOR 2.3
ENV POSTGIS_VERSION 2.3.2+dfsg-1~exp2.pgdg80+1

RUN apt-get update \
      && apt-get install -y --no-install-recommends \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR=$POSTGIS_VERSION \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR-scripts=$POSTGIS_VERSION \
           postgis=$POSTGIS_VERSION \
      && rm -rf /var/lib/apt/lists/*


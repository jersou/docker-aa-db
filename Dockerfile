FROM postgres:9.4


# encoding
RUN apt-get install locales && echo 'fr_FR.UTF-8 UTF-8' >> /etc/locale.gen && locale-gen fr_FR.UTF-8  && update-locale LANG=fr_FR.UTF-8
ENV LANG fr_FR.UTF-8

# postGIS
RUN apt-get update && apt-get install -y postgis

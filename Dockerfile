FROM debian:stretch-slim

LABEL maintainer="kyle@bywatersolutions.com"

# Valid: master, major.minor (19.11, etc)
ARG BRANCH

ENV PATH /usr/bin:/bin:/usr/sbin:/sbin
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update \
    && apt-get -y --allow-unauthenticated install \
      devscripts \
      pbuilder \
      dh-make \
      fakeroot \
      debian-archive-keyring \
      gnupg \
      wget \
   && rm -rf /var/cache/apt/archives/* \
   && rm -rf /var/lib/api/lists/*

COPY pbuilder.sh /pbuilder.sh

VOLUME /output

COPY build.sh /build.sh

CMD /build.sh

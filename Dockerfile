FROM debian:jessie
MAINTAINER Josh Cox <josh 'at' webhosting.coop>

ENV LANG en_US.UTF-8

RUN DEBIAN_FRONTEND=noninteractive \
apt-get -qq update; \
DEBIAN_FRONTEND=noninteractive \
apt-get -qqy dist-upgrade ; \
apt-get -qqy --no-install-recommends install locales \
sudo procps ca-certificates wget pwgen supervisor \
mpd mpd-sima mpdscribble mpdtoys mpdris2 mpdcron mpc ; \
apt-get -y autoremove ; \
apt-get clean ; \
rm -Rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
